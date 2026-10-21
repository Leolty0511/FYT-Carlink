.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "SourceFile"


# static fields
.field static final OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final OFFSET_ADDRESS_VALUE:I = 0x2

.field static final OFFSET_TOA:I = 0x1


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array v0, p3, [B

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 13
    .line 14
    aget-byte v0, p1, v1

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    aget-byte p1, p1, v1

    .line 20
    .line 21
    and-int/lit16 p1, p1, 0xff

    .line 22
    .line 23
    shr-int/lit8 v2, p1, 0x4

    .line 24
    .line 25
    and-int/lit8 v2, v2, 0x7

    .line 26
    .line 27
    iput v2, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 28
    .line 29
    and-int/lit16 v2, p1, 0x80

    .line 30
    .line 31
    const/16 v3, 0x80

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    mul-int/lit8 v0, v0, 0x4

    .line 42
    .line 43
    div-int/lit8 v0, v0, 0x7

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 46
    .line 47
    const/4 p2, 0x2

    .line 48
    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 56
    .line 57
    sub-int/2addr p3, v1

    .line 58
    aget-byte p2, p1, p3

    .line 59
    .line 60
    and-int/2addr v0, v1

    .line 61
    if-ne v0, v1, :cond_1

    .line 62
    .line 63
    or-int/lit16 v0, p2, 0xf0

    .line 64
    .line 65
    int-to-byte v0, v0

    .line 66
    aput-byte v0, p1, p3

    .line 67
    .line 68
    :cond_1
    invoke-static {p1, v1, p3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 75
    .line 76
    aput-byte p2, p1, p3

    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :cond_2
    new-instance p3, Ljava/text/ParseException;

    .line 80
    .line 81
    const-string v0, "Invalid TOA - high bit must be set. toa = "

    .line 82
    .line 83
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    add-int/2addr p2, v1

    .line 88
    invoke-direct {p3, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    throw p3
.end method


# virtual methods
.method public getAddressString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCphsVoiceMessageClear()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCphsVoiceMessageIndicatorAddress()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    and-int/lit16 v0, v0, 0xff

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aget-byte v0, v0, v2

    .line 21
    .line 22
    and-int/lit8 v0, v0, 0xf

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    move v1, v2

    .line 27
    :cond_0
    return v1
.end method

.method public isCphsVoiceMessageSet()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
