.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final VDBG:Z = false

.field protected static validity:I


# instance fields
.field private mDataCodingScheme:I

.field private mIsStatusReportMessage:Z

.field private mMti:I

.field private mProtocolIdentifier:I

.field private mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private mReplyPathPresent:Z

.field private mStatus:I

.field private mVoiceMailCount:I

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 10
    .line 11
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabetEx;->getEncodeType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const v3, 0x11200a1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object p0, v0

    .line 48
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "calculateLength encodeType = "

    .line 51
    .line 52
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "SmsMessage"

    .line 63
    .line 64
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    if-ne v2, v0, :cond_3

    .line 69
    .line 70
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "calculateLength ted = "

    .line 82
    .line 83
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    if-nez p1, :cond_4

    .line 97
    .line 98
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_4
    return-object p1
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6

    .line 1
    const-string v0, "SmsMessage"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 5
    .line 6
    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p0, v2, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    aget-byte v3, p1, p0

    .line 13
    .line 14
    and-int/lit8 v4, v3, 0x1

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    const-string p0, "SMS parsing failed: Trying to parse a free record"

    .line 19
    .line 20
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    and-int/lit8 v3, v3, 0x7

    .line 25
    .line 26
    iput v3, v2, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    .line 27
    .line 28
    array-length v3, p1

    .line 29
    const/4 v4, 0x1

    .line 30
    sub-int/2addr v3, v4

    .line 31
    new-array v5, v3, [B

    .line 32
    .line 33
    invoke-static {p1, v4, v5, p0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "SMS PDU parsing failed: "

    .line 42
    .line 43
    invoke-static {v0, p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 3

    .line 1
    const-string v0, "SmsMessage"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 5
    .line 6
    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v2

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string v2, "SMS PDU parsing failed with out of memory: "

    .line 15
    .line 16
    invoke-static {v0, v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :catch_1
    move-exception p0

    .line 21
    const-string v2, "SMS PDU parsing failed: "

    .line 22
    .line 23
    invoke-static {v0, v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 4

    .line 1
    const-string v0, "utf-16be"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    array-length v3, p0

    .line 13
    add-int/2addr v2, v3

    .line 14
    add-int/2addr v2, v1

    .line 15
    new-array v2, v2, [B

    .line 16
    .line 17
    array-length v3, p1

    .line 18
    int-to-byte v3, v3

    .line 19
    aput-byte v3, v2, v0

    .line 20
    .line 21
    array-length v3, p1

    .line 22
    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 23
    .line 24
    .line 25
    array-length p1, p1

    .line 26
    add-int/2addr p1, v1

    .line 27
    array-length v3, p0

    .line 28
    invoke-static {p0, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 29
    .line 30
    .line 31
    move-object p0, v2

    .line 32
    :cond_0
    array-length p1, p0

    .line 33
    add-int/2addr p1, v1

    .line 34
    new-array p1, p1, [B

    .line 35
    .line 36
    array-length v2, p0

    .line 37
    and-int/lit16 v2, v2, 0xff

    .line 38
    .line 39
    int-to-byte v2, v2

    .line 40
    aput-byte v2, p1, v0

    .line 41
    .line 42
    array-length v2, p0

    .line 43
    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method public static getGsmSctsTime(Landroid/text/format/Time;)[B
    .locals 4

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    iget v1, p0, Landroid/text/format/Time;->year:I

    .line 5
    .line 6
    const/16 v2, 0x7d0

    .line 7
    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    add-int/lit16 v1, v1, -0x76c

    .line 13
    .line 14
    :goto_0
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intoBcdEncodeByte(I)B

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    aput-byte v1, v0, v2

    .line 20
    .line 21
    iget v1, p0, Landroid/text/format/Time;->month:I

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    add-int/2addr v1, v3

    .line 25
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intoBcdEncodeByte(I)B

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    aput-byte v1, v0, v3

    .line 30
    .line 31
    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    .line 32
    .line 33
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intoBcdEncodeByte(I)B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x2

    .line 38
    aput-byte v1, v0, v3

    .line 39
    .line 40
    iget v1, p0, Landroid/text/format/Time;->hour:I

    .line 41
    .line 42
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intoBcdEncodeByte(I)B

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v3, 0x3

    .line 47
    aput-byte v1, v0, v3

    .line 48
    .line 49
    iget v1, p0, Landroid/text/format/Time;->minute:I

    .line 50
    .line 51
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intoBcdEncodeByte(I)B

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v3, 0x4

    .line 56
    aput-byte v1, v0, v3

    .line 57
    .line 58
    iget p0, p0, Landroid/text/format/Time;->second:I

    .line 59
    .line 60
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->intoBcdEncodeByte(I)B

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    const/4 v1, 0x5

    .line 65
    aput-byte p0, v0, v1

    .line 66
    .line 67
    const/4 p0, 0x6

    .line 68
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intoBcdEncodeByte(I)B

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    aput-byte v1, v0, p0

    .line 73
    .line 74
    return-object v0
.end method

.method public static getReceivedPdu(Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)[B
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getReceivedPdu(Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getReceivedPdu(Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;I)[B
    .locals 4

    const-string v0, "getReceivedPdu"

    const-string v1, "SmsMessage"

    .line 1
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x24

    .line 2
    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getReceivedPduHead(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    const/4 v2, 0x1

    if-nez p3, :cond_1

    move p3, v2

    :cond_1
    const-string v3, "Implausible UnsupportedEncodingException "

    if-ne p3, v2, :cond_2

    .line 3
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/GsmAlphabetEx;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4
    :cond_2
    :try_start_1
    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 5
    :try_start_2
    invoke-static {v1, v3, p3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 6
    :catch_1
    :try_start_3
    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 p3, 0x3

    :goto_0
    const/4 v1, 0x0

    if-ne p3, v2, :cond_4

    .line 7
    aget-byte p3, p1, v1

    and-int/lit16 p3, p3, 0xff

    const/16 v2, 0xa0

    if-le p3, v2, :cond_3

    return-object v0

    .line 8
    :cond_3
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 9
    :cond_4
    aget-byte p3, p1, v1

    and-int/lit16 p3, p3, 0xff

    const/16 v2, 0x8c

    if-le p3, v2, :cond_5

    return-object v0

    :cond_5
    const/16 p3, 0xb

    .line 10
    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 11
    :goto_1
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getGsmSctsTime(Landroid/text/format/Time;)[B

    move-result-object p2

    .line 12
    array-length p3, p2

    invoke-virtual {p0, p2, v1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 13
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 14
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    .line 15
    invoke-static {v1, v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static getReceivedPduHead(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    const/16 v1, 0xb4

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    array-length v1, p0

    .line 19
    const/4 v2, 0x1

    .line 20
    sub-int/2addr v1, v2

    .line 21
    mul-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    array-length v3, p0

    .line 24
    sub-int/2addr v3, v2

    .line 25
    aget-byte v3, p0, v3

    .line 26
    .line 27
    const/16 v4, 0xf0

    .line 28
    .line 29
    and-int/2addr v3, v4

    .line 30
    if-ne v3, v4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, p1

    .line 34
    :goto_0
    sub-int/2addr v1, v2

    .line 35
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    .line 37
    .line 38
    array-length v1, p0

    .line 39
    invoke-virtual {v0, p0, p1, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "SmsMessage"

    .line 44
    .line 45
    const-string v1, "Address is invalid format,write empty number"

    .line 46
    .line 47
    invoke-static {p0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 51
    .line 52
    .line 53
    const/16 p0, 0x81

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public static getSmsValidity(Landroid/content/Context;I)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "persist.radio.smstime"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "getSmsValidity()--->>      validity = "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", subId = "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "SmsMessage"

    .line 50
    .line 51
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "getMmsValidity  Exception : "

    .line 63
    .line 64
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    const/4 p0, -0x1

    .line 78
    :goto_1
    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->validity:I

    .line 79
    .line 80
    return-void
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 4

    .line 47
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 48
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/4 p2, 0x0

    .line 49
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 50
    iput-boolean p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 51
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 52
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 53
    invoke-static {v1}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 54
    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const-string v2, "SmsMessage"

    const/16 v3, 0x8c

    if-le v1, v3, :cond_0

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "SMS data message may only contain "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, v0

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v3, 0x41

    .line 57
    invoke-static {p0, p1, v3, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/4 p1, 0x4

    .line 58
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 59
    sget p1, Lcom/android/internal/telephony/gsm/SmsMessage;->validity:I

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "SmsMessage --> write into TP-VP:"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p4, Lcom/android/internal/telephony/gsm/SmsMessage;->validity:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2
    array-length p1, p3

    array-length p4, v0

    add-int/2addr p1, p4

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 63
    array-length p1, v0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 64
    array-length p1, v0

    invoke-virtual {p0, v0, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 65
    array-length p1, p3

    invoke-virtual {p0, p3, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 66
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v4, "getSubmitPdu"

    const-string v5, "SmsMessage"

    .line 2
    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v9, p4

    move/from16 v8, p6

    move/from16 v7, p7

    goto/16 :goto_3

    :cond_2
    :goto_0
    if-ne v2, v4, :cond_3

    .line 3
    invoke-static {v1, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 4
    iget v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 5
    iget v8, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 6
    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 7
    invoke-static {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 8
    iget v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 9
    iget v8, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 10
    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    :goto_1
    move v14, v7

    move v7, v2

    move v2, v14

    goto :goto_2

    :cond_4
    move/from16 v8, p6

    move/from16 v7, p7

    :goto_2
    if-ne v2, v4, :cond_8

    if-nez v8, :cond_5

    if-eqz v7, :cond_8

    :cond_5
    if-eqz p4, :cond_7

    .line 11
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    .line 12
    iget v10, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v10, v8, :cond_6

    iget v10, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v10, v7, :cond_8

    .line 13
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Updating language table in SMS header: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    const-string v12, " -> "

    const-string v13, ", "

    .line 14
    invoke-static {v10, v11, v12, v8, v13}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 15
    iget v11, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iput v8, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 17
    iput v7, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 18
    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    goto :goto_3

    .line 19
    :cond_7
    new-instance v9, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 20
    iput v8, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 21
    iput v7, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 22
    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    goto :goto_3

    :cond_8
    move-object/from16 v9, p4

    .line 23
    :goto_3
    new-instance v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v10}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    if-eqz v9, :cond_9

    const/16 v11, 0x40

    goto :goto_4

    :cond_9
    move v11, v6

    :goto_4
    or-int/2addr v11, v4

    int-to-byte v11, v11

    move-object v12, p0

    move/from16 v13, p3

    .line 24
    invoke-static {p0, v0, v11, v13, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v11

    if-nez v11, :cond_a

    return-object v10

    .line 25
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "getSubmitPdu: encoding = "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "Implausible UnsupportedEncodingException "

    if-ne v2, v4, :cond_b

    .line 26
    :try_start_0
    invoke-static {v1, v9, v8, v7}, Lcom/android/internal/telephony/GsmAlphabetEx;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    .line 27
    :cond_b
    :try_start_1
    invoke-static {v1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 28
    :try_start_2
    invoke-static {v5, v12, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 29
    :catch_1
    :try_start_3
    invoke-static {v1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v2, 0x3

    :goto_5
    const-string v1, "Message too long ("

    if-ne v2, v4, :cond_d

    .line 30
    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xa0

    if-le v2, v4, :cond_c

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " septets)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 32
    :cond_c
    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    .line 33
    :cond_d
    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x8c

    if-le v2, v4, :cond_e

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_e
    const/16 v1, 0x8

    .line 35
    invoke-virtual {v11, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    :goto_6
    sget v1, Lcom/android/internal/telephony/gsm/SmsMessage;->validity:I

    if-eqz v1, :cond_f

    .line 37
    invoke-virtual {v11, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmsMessage --> write into TP-VP:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/internal/telephony/gsm/SmsMessage;->validity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_f
    array-length v1, v0

    invoke-virtual {v11, v0, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 40
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    return-object v10

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 41
    invoke-static {v5, v12, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_7
    return-object v3
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    const/16 v1, 0xb4

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    iput-object v1, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iput-object p0, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 19
    .line 20
    :goto_0
    sget p0, Lcom/android/internal/telephony/gsm/SmsMessage;->validity:I

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    or-int/lit8 p0, p2, 0x10

    .line 25
    .line 26
    int-to-byte p2, p0

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p4, "SmsMessage --> TP-VPF = 0x"

    .line 30
    .line 31
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p4, "SmsMessage"

    .line 42
    .line 43
    invoke-static {p4, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    if-eqz p3, :cond_2

    .line 47
    .line 48
    or-int/lit8 p0, p2, 0x20

    .line 49
    .line 50
    int-to-byte p2, p0

    .line 51
    :cond_2
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_3
    array-length p2, p1

    .line 66
    const/4 p3, 0x1

    .line 67
    sub-int/2addr p2, p3

    .line 68
    mul-int/lit8 p2, p2, 0x2

    .line 69
    .line 70
    array-length p4, p1

    .line 71
    sub-int/2addr p4, p3

    .line 72
    aget-byte p4, p1, p4

    .line 73
    .line 74
    const/16 v1, 0xf0

    .line 75
    .line 76
    and-int/2addr p4, v1

    .line 77
    if-ne p4, v1, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move p3, p0

    .line 81
    :goto_1
    sub-int/2addr p2, p3

    .line 82
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    .line 84
    .line 85
    array-length p2, p1

    .line 86
    invoke-virtual {v0, p1, p0, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    div-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    sub-int/2addr v0, p0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    return v0
.end method

.method public static intoBcdEncodeByte(I)B
    .locals 1

    .line 1
    rem-int/lit8 v0, p0, 0xa

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    and-int/lit16 v0, v0, 0xf0

    .line 6
    .line 7
    int-to-byte v0, v0

    .line 8
    div-int/lit8 p0, p0, 0xa

    .line 9
    .line 10
    and-int/lit8 p0, p0, 0xf

    .line 11
    .line 12
    int-to-byte p0, p0

    .line 13
    or-int/2addr p0, v0

    .line 14
    int-to-byte p0, p0

    .line 15
    return p0
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2

    .line 4
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "SmsMessage"

    const-string v1, "CDS SMS PDU parsing failed: "

    .line 6
    invoke-static {v0, v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newFromCDS([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 2
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "SmsMessage"

    const-string v1, "CDS SMS PDU parsing failed: "

    .line 3
    invoke-static {v0, v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newFromCMT([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "SmsMessage"

    .line 12
    .line 13
    const-string v1, "SMS PDU parsing failed: "

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method private parsePdu([B)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 2
    .line 3
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    and-int/lit8 v1, p1, 0x3

    .line 19
    .line 20
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v0, "Unsupported message type"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 5

    .line 1
    and-int/lit16 v0, p2, 0x80

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x80

    .line 6
    .line 7
    if-ne v0, v3, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    iput-wide v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    .line 37
    .line 38
    const/16 v0, 0x40

    .line 39
    .line 40
    and-int/2addr p2, v0

    .line 41
    if-ne p2, v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v1, v2

    .line 45
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    move v2, v1

    .line 42
    :goto_0
    and-int/lit16 v2, v2, 0x80

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    and-int/lit8 v2, v1, 0x78

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    and-int/lit8 v2, v1, 0x1

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 64
    .line 65
    :cond_1
    and-int/lit8 v2, v1, 0x2

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 74
    .line 75
    :cond_2
    and-int/lit8 v1, v1, 0x4

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const/16 v1, 0x40

    .line 80
    .line 81
    and-int/2addr p2, v1

    .line 82
    if-ne p2, v1, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v0, 0x0

    .line 86
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 4

    .line 1
    and-int/lit16 v0, p2, 0x80

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x80

    .line 6
    .line 7
    if-ne v0, v3, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 37
    .line 38
    shr-int/lit8 v0, p2, 0x3

    .line 39
    .line 40
    and-int/lit8 v0, v0, 0x3

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    move v0, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v3, 0x2

    .line 47
    if-ne v3, v0, :cond_2

    .line 48
    .line 49
    move v0, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v0, 0x7

    .line 52
    :goto_1
    add-int/lit8 v3, v0, -0x1

    .line 53
    .line 54
    if-lez v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 57
    .line 58
    .line 59
    move v0, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/16 v0, 0x40

    .line 62
    .line 63
    and-int/2addr p2, v0

    .line 64
    if-ne p2, v0, :cond_4

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move v1, v2

    .line 68
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 4
    .line 5
    const-string v2, " Dont store = "

    .line 6
    .line 7
    const v3, 0x11200a0

    .line 8
    .line 9
    .line 10
    const/16 v4, 0xd0

    .line 11
    .line 12
    const/16 v5, 0xe0

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x3

    .line 16
    const-string v8, "SmsMessage"

    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    const/4 v10, 0x0

    .line 20
    const/16 v11, 0x80

    .line 21
    .line 22
    if-nez v1, :cond_7

    .line 23
    .line 24
    and-int/lit8 v1, v0, 0x20

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    move v1, v9

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v1, v10

    .line 31
    :goto_0
    and-int/lit8 v5, v0, 0x10

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    move v5, v9

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v5, v10

    .line 38
    :goto_1
    if-eqz v1, :cond_2

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "4 - Unsupported SMS data coding scheme (compression) "

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 48
    .line 49
    and-int/lit16 v1, v1, 0xff

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    shr-int/2addr v0, v6

    .line 63
    and-int/2addr v0, v7

    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    if-eq v0, v9, :cond_4

    .line 67
    .line 68
    if-eq v0, v6, :cond_3

    .line 69
    .line 70
    if-eq v0, v7, :cond_5

    .line 71
    .line 72
    :goto_2
    move v6, v10

    .line 73
    goto/16 :goto_c

    .line 74
    .line 75
    :cond_3
    move v6, v7

    .line 76
    goto/16 :goto_c

    .line 77
    .line 78
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    goto/16 :goto_c

    .line 89
    .line 90
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "1 - Unsupported SMS data coding scheme "

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 98
    .line 99
    and-int/lit16 v1, v1, 0xff

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    goto/16 :goto_c

    .line 112
    .line 113
    :cond_6
    move v6, v9

    .line 114
    goto/16 :goto_c

    .line 115
    .line 116
    :cond_7
    and-int/lit16 v1, v0, 0xf0

    .line 117
    .line 118
    const/16 v3, 0xf0

    .line 119
    .line 120
    if-ne v1, v3, :cond_9

    .line 121
    .line 122
    and-int/lit8 v0, v0, 0x4

    .line 123
    .line 124
    if-nez v0, :cond_8

    .line 125
    .line 126
    move v6, v9

    .line 127
    goto :goto_5

    .line 128
    :cond_8
    move v5, v9

    .line 129
    goto/16 :goto_c

    .line 130
    .line 131
    :cond_9
    and-int/lit16 v1, v0, 0xf0

    .line 132
    .line 133
    const/16 v6, 0xc0

    .line 134
    .line 135
    if-eq v1, v6, :cond_d

    .line 136
    .line 137
    and-int/lit16 v1, v0, 0xf0

    .line 138
    .line 139
    if-eq v1, v4, :cond_d

    .line 140
    .line 141
    and-int/lit16 v1, v0, 0xf0

    .line 142
    .line 143
    if-ne v1, v5, :cond_a

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_a
    and-int/lit16 v1, v0, 0xc0

    .line 147
    .line 148
    if-ne v1, v11, :cond_c

    .line 149
    .line 150
    const/16 v1, 0x84

    .line 151
    .line 152
    if-ne v0, v1, :cond_b

    .line 153
    .line 154
    const/4 v6, 0x4

    .line 155
    :goto_3
    move v5, v10

    .line 156
    goto/16 :goto_c

    .line 157
    .line 158
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v1, "5 - Unsupported SMS data coding scheme "

    .line 161
    .line 162
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 166
    .line 167
    and-int/lit16 v1, v1, 0xff

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v1, "3 - Unsupported SMS data coding scheme "

    .line 183
    .line 184
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 188
    .line 189
    and-int/lit16 v1, v1, 0xff

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    :goto_4
    move v6, v10

    .line 202
    :goto_5
    move v5, v6

    .line 203
    goto/16 :goto_c

    .line 204
    .line 205
    :cond_d
    :goto_6
    and-int/lit16 v1, v0, 0xf0

    .line 206
    .line 207
    if-ne v1, v5, :cond_e

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_e
    move v7, v9

    .line 211
    :goto_7
    and-int/lit8 v1, v0, 0x8

    .line 212
    .line 213
    const/16 v5, 0x8

    .line 214
    .line 215
    if-ne v1, v5, :cond_f

    .line 216
    .line 217
    move v1, v9

    .line 218
    goto :goto_8

    .line 219
    :cond_f
    move v1, v10

    .line 220
    :goto_8
    and-int/lit8 v5, v0, 0x3

    .line 221
    .line 222
    if-nez v5, :cond_12

    .line 223
    .line 224
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    .line 225
    .line 226
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiSense:Z

    .line 227
    .line 228
    and-int/2addr v0, v3

    .line 229
    if-ne v0, v6, :cond_10

    .line 230
    .line 231
    move v0, v9

    .line 232
    goto :goto_9

    .line 233
    :cond_10
    move v0, v10

    .line 234
    :goto_9
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    .line 235
    .line 236
    if-ne v1, v9, :cond_11

    .line 237
    .line 238
    const/4 v0, -0x1

    .line 239
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 240
    .line 241
    goto :goto_a

    .line 242
    :cond_11
    iput v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 243
    .line 244
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v1, "MWI in DCS for Vmail. DCS = "

    .line 247
    .line 248
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 252
    .line 253
    and-int/lit16 v1, v1, 0xff

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, " vmail count = "

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    goto :goto_b

    .line 284
    :cond_12
    iput-boolean v10, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    .line 285
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v1, "MWI in DCS for fax/email/other: "

    .line 289
    .line 290
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 294
    .line 295
    and-int/lit16 v1, v1, 0xff

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    :goto_b
    move v6, v7

    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :goto_c
    if-ne v6, v9, :cond_13

    .line 311
    .line 312
    move v0, v9

    .line 313
    goto :goto_d

    .line 314
    :cond_13
    move v0, v10

    .line 315
    :goto_d
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 330
    .line 331
    if-eqz p2, :cond_1b

    .line 332
    .line 333
    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_1b

    .line 340
    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 342
    .line 343
    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-eqz v3, :cond_1b

    .line 354
    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    check-cast v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 360
    .line 361
    iget v7, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    .line 362
    .line 363
    and-int/lit16 v7, v7, 0xff

    .line 364
    .line 365
    if-eqz v7, :cond_15

    .line 366
    .line 367
    if-ne v7, v11, :cond_14

    .line 368
    .line 369
    goto :goto_f

    .line 370
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v4, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    .line 373
    .line 374
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-static {v8, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    goto :goto_12

    .line 388
    :cond_15
    :goto_f
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    .line 389
    .line 390
    if-ne v7, v11, :cond_16

    .line 391
    .line 392
    iput-boolean v10, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    .line 393
    .line 394
    goto :goto_10

    .line 395
    :cond_16
    iget-boolean v11, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    .line 396
    .line 397
    if-nez v11, :cond_19

    .line 398
    .line 399
    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 400
    .line 401
    and-int/lit16 v12, v11, 0xf0

    .line 402
    .line 403
    if-eq v12, v4, :cond_17

    .line 404
    .line 405
    and-int/lit16 v4, v11, 0xf0

    .line 406
    .line 407
    const/16 v12, 0xe0

    .line 408
    .line 409
    if-ne v4, v12, :cond_18

    .line 410
    .line 411
    :cond_17
    and-int/lit8 v4, v11, 0x3

    .line 412
    .line 413
    if-eqz v4, :cond_19

    .line 414
    .line 415
    :cond_18
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    .line 416
    .line 417
    :cond_19
    :goto_10
    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    .line 418
    .line 419
    and-int/lit16 v3, v3, 0xff

    .line 420
    .line 421
    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 422
    .line 423
    if-lez v3, :cond_1a

    .line 424
    .line 425
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiSense:Z

    .line 426
    .line 427
    goto :goto_11

    .line 428
    :cond_1a
    iput-boolean v10, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiSense:Z

    .line 429
    .line 430
    :goto_11
    const-string v3, "MWI in TP-UDH for Vmail. Msg Ind = "

    .line 431
    .line 432
    invoke-static {v3, v7, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    iget-boolean v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    .line 437
    .line 438
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v4, " Vmail count = "

    .line 442
    .line 443
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 447
    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-static {v8, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    :goto_12
    const/16 v4, 0xd0

    .line 459
    .line 460
    const/16 v11, 0x80

    .line 461
    .line 462
    goto :goto_e

    .line 463
    :cond_1b
    const/4 v1, 0x0

    .line 464
    if-eqz v6, :cond_24

    .line 465
    .line 466
    if-eq v6, v9, :cond_21

    .line 467
    .line 468
    const/4 p2, 0x2

    .line 469
    if-eq v6, p2, :cond_1e

    .line 470
    .line 471
    const/4 p2, 0x3

    .line 472
    if-eq v6, p2, :cond_1d

    .line 473
    .line 474
    const/4 p2, 0x4

    .line 475
    if-eq v6, p2, :cond_1c

    .line 476
    .line 477
    goto :goto_14

    .line 478
    :cond_1c
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 483
    .line 484
    goto :goto_14

    .line 485
    :cond_1d
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 490
    .line 491
    goto :goto_14

    .line 492
    :cond_1e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 493
    .line 494
    .line 495
    move-result-object p2

    .line 496
    const v2, 0x11200a0

    .line 497
    .line 498
    .line 499
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 500
    .line 501
    .line 502
    move-result p2

    .line 503
    const-string v2, "SMS message ENCODING_8BIT mMessageBody = null."

    .line 504
    .line 505
    if-eqz p2, :cond_20

    .line 506
    .line 507
    iget-object p2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 508
    .line 509
    if-eqz p2, :cond_1f

    .line 510
    .line 511
    iget-object p2, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 512
    .line 513
    if-eqz p2, :cond_1f

    .line 514
    .line 515
    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 516
    .line 517
    invoke-static {v8, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    goto :goto_14

    .line 521
    :cond_1f
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 526
    .line 527
    const-string p1, "SMS message ENCODING_8BIT mMessageBody != null."

    .line 528
    .line 529
    invoke-static {v8, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    goto :goto_14

    .line 533
    :cond_20
    invoke-static {v8, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 537
    .line 538
    goto :goto_14

    .line 539
    :cond_21
    if-eqz p2, :cond_22

    .line 540
    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 542
    .line 543
    iget v1, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 544
    .line 545
    goto :goto_13

    .line 546
    :cond_22
    move v1, v10

    .line 547
    :goto_13
    if-eqz p2, :cond_23

    .line 548
    .line 549
    iget-object p2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 550
    .line 551
    iget v10, p2, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 552
    .line 553
    :cond_23
    invoke-virtual {p1, v0, v1, v10}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 558
    .line 559
    goto :goto_14

    .line 560
    :cond_24
    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 561
    .line 562
    :goto_14
    iget-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 563
    .line 564
    if-eqz p1, :cond_25

    .line 565
    .line 566
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->parseMessageBody()V

    .line 567
    .line 568
    .line 569
    :cond_25
    if-nez v5, :cond_26

    .line 570
    .line 571
    sget-object p1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 572
    .line 573
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 574
    .line 575
    goto :goto_15

    .line 576
    :cond_26
    iget p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 577
    .line 578
    const/4 p2, 0x3

    .line 579
    and-int/2addr p1, p2

    .line 580
    if-eqz p1, :cond_2a

    .line 581
    .line 582
    if-eq p1, v9, :cond_29

    .line 583
    .line 584
    const/4 v0, 0x2

    .line 585
    if-eq p1, v0, :cond_28

    .line 586
    .line 587
    if-eq p1, p2, :cond_27

    .line 588
    .line 589
    goto :goto_15

    .line 590
    :cond_27
    sget-object p1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 591
    .line 592
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 593
    .line 594
    goto :goto_15

    .line 595
    :cond_28
    sget-object p1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 596
    .line 597
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 598
    .line 599
    goto :goto_15

    .line 600
    :cond_29
    sget-object p1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 601
    .line 602
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 603
    .line 604
    goto :goto_15

    .line 605
    :cond_2a
    sget-object p1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 606
    .line 607
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 608
    .line 609
    :goto_15
    return-void
.end method


# virtual methods
.method public getDataCodingScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getNumOfVoicemails()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/16 v0, 0xff

    .line 24
    .line 25
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 30
    .line 31
    :goto_0
    const-string v0, "SmsMessage"

    .line 32
    .line 33
    const-string v1, "CPHS voice mail message"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 39
    .line 40
    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 2
    .line 3
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 12
    .line 13
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiSense:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiSense:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v0, " "

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return v0
.end method

.method public isReplace()Z
    .locals 3

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    and-int/lit8 v1, v0, 0x3f

    if-lez v1, :cond_0

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsimDataDownload()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
