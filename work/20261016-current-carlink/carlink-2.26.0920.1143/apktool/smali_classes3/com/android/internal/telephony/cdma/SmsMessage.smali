.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final VDBG:Z = false


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 3
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x11200a1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object p0, v0

    .line 28
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static convertDtmfToAscii(B)B
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x20

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x43

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x42

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x41

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x23

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x2a

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x30

    goto :goto_0

    :pswitch_6
    const/16 p0, 0x39

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x38

    goto :goto_0

    :pswitch_8
    const/16 p0, 0x37

    goto :goto_0

    :pswitch_9
    const/16 p0, 0x36

    goto :goto_0

    :pswitch_a
    const/16 p0, 0x35

    goto :goto_0

    :pswitch_b
    const/16 p0, 0x34

    goto :goto_0

    :pswitch_c
    const/16 p0, 0x33

    goto :goto_0

    :pswitch_d
    const/16 p0, 0x32

    goto :goto_0

    :pswitch_e
    const/16 p0, 0x31

    goto :goto_0

    :pswitch_f
    const/16 p0, 0x44

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 6

    .line 1
    const-string v0, "SmsMessage"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 5
    .line 6
    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

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
    const/4 v3, 0x1

    .line 29
    aget-byte v3, p1, v3

    .line 30
    .line 31
    new-array v4, v3, [B

    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    invoke-static {p1, v5, v4, p0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :catch_0
    move-exception p0

    .line 42
    const-string p1, "SMS PDU parsing failed: "

    .line 43
    .line 44
    invoke-static {v0, p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 3

    .line 1
    const-string v0, "SmsMessage"

    .line 2
    .line 3
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string v1, "SMS PDU parsing failed with out of memory: "

    .line 15
    .line 16
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    return-object v2

    .line 20
    :catch_1
    move-exception p0

    .line 21
    const-string v1, "SMS PDU parsing failed: "

    .line 22
    .line 23
    invoke-static {v0, v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    return-object v2
.end method

.method public static declared-synchronized getNextMessageId()I
    .locals 8

    .line 1
    const-string v0, "readback gets "

    .line 2
    .line 3
    const-string v1, "next persist.radio.cdma.msgid = "

    .line 4
    .line 5
    const-string v2, "set nextMessage ID failed: "

    .line 6
    .line 7
    const-class v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    const-string v4, "persist.radio.cdma.msgid"

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const v6, 0xffff

    .line 18
    .line 19
    .line 20
    rem-int v6, v4, v6

    .line 21
    .line 22
    add-int/2addr v6, v5

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    const-string v6, "persist.radio.cdma.msgid"

    .line 28
    .line 29
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v6, "CDMA:SMS"

    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    const-string v6, "SmsMessage"

    .line 42
    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v6, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const-string v1, "SmsMessage"

    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "persist.radio.cdma.msgid"

    .line 66
    .line 67
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :try_start_2
    const-string v1, "SmsMessage"

    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_0
    :goto_0
    monitor-exit v3

    .line 101
    return v4

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    monitor-exit v3

    .line 104
    throw v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 0

    .line 17
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1

    .line 5
    new-instance p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 6
    iput p2, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 8
    iput-boolean p2, p0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 9
    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 10
    iput-object p0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 11
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 13
    iput p2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 15
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 16
    invoke-static {p1, p4, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 4
    invoke-static {p1, p3, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string p0, "SmsMessage"

    .line 2
    .line 3
    const-string v0, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 10

    .line 1
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 17
    .line 18
    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    and-int/lit16 v6, v4, 0xff

    .line 59
    .line 60
    int-to-byte v6, v6

    .line 61
    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    and-int/lit16 v6, v6, 0xff

    .line 68
    .line 69
    int-to-byte v6, v6

    .line 70
    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    iput v6, v2, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    and-int/lit16 v6, v6, 0xff

    .line 83
    .line 84
    int-to-byte v6, v6

    .line 85
    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 92
    .line 93
    new-array v7, v6, [B

    .line 94
    .line 95
    move v8, v5

    .line 96
    :goto_1
    if-ge v8, v6, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    aput-byte v9, v7, v8

    .line 103
    .line 104
    if-nez v4, :cond_2

    .line 105
    .line 106
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    aput-byte v9, v7, v8

    .line 111
    .line 112
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iput-object v7, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    iput-byte v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-gez v4, :cond_4

    .line 134
    .line 135
    move v4, v5

    .line 136
    :cond_4
    new-array v6, v4, [B

    .line 137
    .line 138
    move v7, v5

    .line 139
    :goto_2
    if-ge v7, v4, :cond_5

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    aput-byte v8, v6, v7

    .line 146
    .line 147
    add-int/lit8 v7, v7, 0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    iput-object v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-gez v4, :cond_6

    .line 157
    .line 158
    move v4, v5

    .line 159
    :cond_6
    new-array v6, v4, [B

    .line 160
    .line 161
    :goto_3
    if-ge v5, v4, :cond_7

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    aput-byte v7, v6, v5

    .line 168
    .line 169
    add-int/lit8 v5, v5, 0x1

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_7
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 173
    .line 174
    iput-object v2, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 175
    .line 176
    iput-object v3, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 177
    .line 178
    iput-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 179
    .line 180
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 183
    .line 184
    .line 185
    return-object v0
.end method

.method private parsePdu([B)V
    .locals 9

    .line 1
    const-string v0, "createFromPdu: conversion from byte array to object failed: "

    .line 2
    .line 3
    const-string v1, "createFromPdu: Invalid pdu, bearerDataLength "

    .line 4
    .line 5
    const-string v2, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    .line 6
    .line 7
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 8
    .line 9
    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/io/DataInputStream;

    .line 13
    .line 14
    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 23
    .line 24
    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iput v6, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    iput v6, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    iput v6, v5, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iput v6, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    iput v6, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 74
    .line 75
    array-length v7, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const-string v8, " > pdu len "

    .line 77
    .line 78
    if-gt v6, v7, :cond_1

    .line 79
    .line 80
    :try_start_1
    new-array v2, v6, [B

    .line 81
    .line 82
    iput-object v2, v5, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    invoke-virtual {v4, v2, v7, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iput v2, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    iput-byte v2, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iput-byte v2, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iput-byte v2, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    array-length v6, p1

    .line 117
    if-gt v2, v6, :cond_0

    .line 118
    .line 119
    new-array v1, v2, [B

    .line 120
    .line 121
    iput-object v1, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 122
    .line 123
    invoke-virtual {v4, v1, v7, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    .line 131
    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    array-length v1, p1

    .line 144
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v4

    .line 155
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 156
    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    array-length v2, p1

    .line 169
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v1, "SmsMessage"

    .line 194
    .line 195
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :goto_0
    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 199
    .line 200
    iput-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 201
    .line 202
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 203
    .line 204
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :catch_1
    move-exception p1

    .line 211
    new-instance v1, Ljava/lang/RuntimeException;

    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    throw v1
.end method

.method private parsePduFromEfRecord([B)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "SmsMessage"

    .line 6
    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 8
    .line 9
    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/io/DataInputStream;

    .line 13
    .line 14
    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 18
    .line 19
    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 23
    .line 24
    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 28
    .line 29
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 37
    .line 38
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-lez v8, :cond_a

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    new-array v10, v9, [B

    .line 53
    .line 54
    const/4 v11, 0x2

    .line 55
    const/4 v12, 0x6

    .line 56
    const/4 v13, 0x3

    .line 57
    const/16 v15, 0x8

    .line 58
    .line 59
    const/4 v14, 0x0

    .line 60
    packed-switch v8, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    new-instance v0, Ljava/lang/Exception;

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :pswitch_0
    invoke-virtual {v4, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 68
    .line 69
    .line 70
    iput-object v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_1
    invoke-virtual {v4, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 74
    .line 75
    .line 76
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    .line 77
    .line 78
    invoke-direct {v8, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v12}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    aget-byte v9, v9, v14

    .line 86
    .line 87
    iput-byte v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 88
    .line 89
    invoke-virtual {v8, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    aget-byte v9, v9, v14

    .line 94
    .line 95
    iput-byte v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 96
    .line 97
    if-eqz v9, :cond_0

    .line 98
    .line 99
    invoke-virtual {v8, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    aget-byte v8, v8, v14

    .line 104
    .line 105
    iput-byte v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {v4, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 109
    .line 110
    .line 111
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    .line 112
    .line 113
    invoke-direct {v8, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :pswitch_3
    invoke-virtual {v4, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 124
    .line 125
    .line 126
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    .line 127
    .line 128
    invoke-direct {v8, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    iput v9, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 136
    .line 137
    const/4 v9, 0x1

    .line 138
    invoke-virtual {v8, v9}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    aget-byte v9, v9, v14

    .line 143
    .line 144
    iput-byte v9, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 145
    .line 146
    invoke-virtual {v8, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    new-array v10, v9, [B

    .line 151
    .line 152
    :goto_1
    if-ge v14, v9, :cond_1

    .line 153
    .line 154
    const/4 v11, 0x4

    .line 155
    invoke-virtual {v8, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    and-int/lit16 v11, v12, 0xff

    .line 160
    .line 161
    int-to-byte v11, v11

    .line 162
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    aput-byte v11, v10, v14

    .line 167
    .line 168
    add-int/lit8 v14, v14, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_1
    iput-object v10, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :pswitch_4
    invoke-virtual {v4, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 176
    .line 177
    .line 178
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    .line 179
    .line 180
    invoke-direct {v8, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 181
    .line 182
    .line 183
    const/4 v9, 0x1

    .line 184
    invoke-virtual {v8, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 189
    .line 190
    invoke-virtual {v8, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 195
    .line 196
    iget v10, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 197
    .line 198
    if-ne v10, v9, :cond_2

    .line 199
    .line 200
    invoke-virtual {v8, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    iput v9, v6, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 205
    .line 206
    iget v10, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 207
    .line 208
    if-nez v10, :cond_3

    .line 209
    .line 210
    const/4 v10, 0x4

    .line 211
    invoke-virtual {v8, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    iput v12, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_2
    move v9, v14

    .line 219
    :cond_3
    :goto_2
    invoke-virtual {v8, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 224
    .line 225
    new-array v10, v10, [B

    .line 226
    .line 227
    iget v12, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 228
    .line 229
    if-nez v12, :cond_4

    .line 230
    .line 231
    :goto_3
    iget v9, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 232
    .line 233
    if-ge v14, v9, :cond_9

    .line 234
    .line 235
    const/4 v9, 0x4

    .line 236
    invoke-virtual {v8, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    and-int/lit8 v11, v11, 0xf

    .line 241
    .line 242
    int-to-byte v11, v11

    .line 243
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    aput-byte v11, v10, v14

    .line 248
    .line 249
    add-int/lit8 v14, v14, 0x1

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_4
    const/4 v13, 0x1

    .line 253
    if-ne v12, v13, :cond_8

    .line 254
    .line 255
    iget v12, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 256
    .line 257
    if-nez v12, :cond_5

    .line 258
    .line 259
    :goto_4
    iget v9, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 260
    .line 261
    if-ge v14, v9, :cond_9

    .line 262
    .line 263
    invoke-virtual {v8, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    and-int/lit16 v9, v9, 0xff

    .line 268
    .line 269
    int-to-byte v9, v9

    .line 270
    aput-byte v9, v10, v14

    .line 271
    .line 272
    add-int/lit8 v14, v14, 0x1

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_5
    const/4 v8, 0x1

    .line 276
    if-ne v12, v8, :cond_7

    .line 277
    .line 278
    if-ne v9, v11, :cond_6

    .line 279
    .line 280
    const-string v8, "TODO: Originating Addr is email id"

    .line 281
    .line 282
    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_6
    const-string v8, "TODO: Originating Addr is data network address"

    .line 287
    .line 288
    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_7
    const-string v8, "Originating Addr is of incorrect type"

    .line 293
    .line 294
    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_8
    const-string v8, "Incorrect Digit mode"

    .line 299
    .line 300
    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    :cond_9
    :goto_5
    iput-object v10, v6, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 304
    .line 305
    new-instance v8, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v9, "Originating Addr="

    .line 311
    .line 312
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    invoke-static {v3, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :pswitch_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 332
    .line 333
    .line 334
    move-result v8

    .line 335
    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :pswitch_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 344
    .line 345
    new-instance v8, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v9, "teleservice = "

    .line 351
    .line 352
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 356
    .line 357
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    invoke-static {v3, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v9, "unsupported parameterId ("

    .line 375
    .line 376
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v8, ")"

    .line 383
    .line 384
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw v0

    .line 395
    :cond_a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .line 400
    .line 401
    goto :goto_7

    .line 402
    :catch_0
    move-exception v0

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v8, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    .line 406
    .line 407
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    :goto_7
    iput-object v6, v1, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 421
    .line 422
    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 423
    .line 424
    iput-object v7, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 425
    .line 426
    iput-object v5, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 427
    .line 428
    iput-object v2, v1, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 429
    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    nop

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 20
    .line 21
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 26
    .line 27
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 31
    .line 32
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 33
    .line 34
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 35
    .line 36
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v3, "CDMA:SMS"

    .line 43
    .line 44
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const-string v3, "SmsMessage"

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v4, "MO (encoded) BearerData = "

    .line 55
    .line 56
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v4, "MO raw BearerData = \'"

    .line 72
    .line 73
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, "\'"

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_1
    if-nez p2, :cond_2

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_2
    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    const/16 v1, 0x1005

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const/16 v1, 0x1002

    .line 106
    .line 107
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 108
    .line 109
    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 110
    .line 111
    .line 112
    iput p1, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 113
    .line 114
    iput v1, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 115
    .line 116
    iput-object p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    iput v1, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 120
    .line 121
    iput-object p2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 122
    .line 123
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 124
    .line 125
    const/16 v4, 0x64

    .line 126
    .line 127
    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 128
    .line 129
    .line 130
    new-instance v4, Ljava/io/DataOutputStream;

    .line 131
    .line 132
    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 133
    .line 134
    .line 135
    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 136
    .line 137
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 144
    .line 145
    .line 146
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 147
    .line 148
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 149
    .line 150
    .line 151
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 154
    .line 155
    .line 156
    iget v2, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 157
    .line 158
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 159
    .line 160
    .line 161
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 162
    .line 163
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 164
    .line 165
    .line 166
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 167
    .line 168
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 169
    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 172
    .line 173
    array-length v2, p0

    .line 174
    invoke-virtual {v4, p0, p1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 184
    .line 185
    .line 186
    array-length p0, p2

    .line 187
    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 188
    .line 189
    .line 190
    array-length p0, p2

    .line 191
    invoke-virtual {v4, p2, p1, p0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 195
    .line 196
    .line 197
    new-instance p0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    .line 198
    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    .line 207
    .line 208
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    return-object p0

    .line 211
    :catch_0
    move-exception p0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string p2, "creating SubmitPdu failed: "

    .line 215
    .line 216
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    return-object v0
.end method


# virtual methods
.method public createPdu()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 4
    .line 5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    const/16 v3, 0x64

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/io/DataOutputStream;

    .line 13
    .line 14
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 15
    .line 16
    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 40
    .line 41
    .line 42
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 45
    .line 46
    .line 47
    iget v4, v1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 50
    .line 51
    .line 52
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 55
    .line 56
    .line 57
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 63
    .line 64
    array-length v4, v1

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 67
    .line 68
    .line 69
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 70
    .line 71
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    iget-byte v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 77
    .line 78
    .line 79
    iget-byte v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 82
    .line 83
    .line 84
    iget-byte v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 90
    .line 91
    array-length v1, v1

    .line 92
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 96
    .line 97
    array-length v1, v0

    .line 98
    invoke-virtual {v3, v0, v5, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v2, "createPdu: conversion from object to byte array failed: "

    .line 115
    .line 116
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "SmsMessage"

    .line 127
    .line 128
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :goto_0
    return-void
.end method

.method public getIncomingSmsFingerprint()[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 7
    .line 8
    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 14
    .line 15
    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 25
    .line 26
    array-length v2, v1

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 34
    .line 35
    array-length v2, v1

    .line 36
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 44
    .line 45
    array-length v2, v1

    .line 46
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 11
    .line 12
    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .line 1
    const-string v0, "SmsMessage"

    .line 2
    .line 3
    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getTeleService()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .line 1
    const-string v0, "SmsMessage"

    .line 2
    .line 3
    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMwiDontStore()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReplace()Z
    .locals 2

    .line 1
    const-string v0, "SmsMessage"

    .line 2
    .line 3
    const-string v1, "isReplace: is not supported in CDMA mode."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .line 1
    const-string v0, "SmsMessage"

    .line 2
    .line 3
    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseBroadcastSms()Landroid/telephony/SmsCbMessage;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 4
    .line 5
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SmsMessage"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "BearerData.decode() returned null"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v2, "CDMA:SMS"

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "MT raw BearerData = "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 41
    .line 42
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v6, Landroid/telephony/SmsCbLocation;

    .line 65
    .line 66
    invoke-direct {v6, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Landroid/telephony/SmsCbMessage;

    .line 70
    .line 71
    const/4 v3, 0x2

    .line 72
    const/4 v4, 0x1

    .line 73
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 76
    .line 77
    iget v7, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 84
    .line 85
    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 86
    .line 87
    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 88
    .line 89
    const/4 v11, 0x0

    .line 90
    iget-object v12, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 91
    .line 92
    move-object v2, v1

    .line 93
    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    .line 94
    .line 95
    .line 96
    return-object v1
.end method

.method public parseSms()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 4
    .line 5
    const/high16 v2, 0x40000

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    aget-byte v1, v1, v3

    .line 24
    .line 25
    and-int/lit16 v1, v1, 0xff

    .line 26
    .line 27
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 37
    .line 38
    const-string v0, "CDMA:SMS"

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const-string v1, "SmsMessage"

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "MT raw BearerData = \'"

    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 59
    .line 60
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, "\'"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "MT (decoded) BearerData = "

    .line 82
    .line 83
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 99
    .line 100
    iget v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 101
    .line 102
    iput v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 109
    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    .line 111
    .line 112
    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 113
    .line 114
    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 119
    .line 120
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    new-instance v4, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 128
    .line 129
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 130
    .line 131
    .line 132
    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 135
    .line 136
    iget v4, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 137
    .line 138
    if-ne v4, v2, :cond_4

    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    const/16 v4, 0x2b

    .line 147
    .line 148
    if-eq v0, v4, :cond_4

    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 151
    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v5, "+"

    .line 155
    .line 156
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 160
    .line 161
    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 171
    .line 172
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 175
    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    .line 179
    .line 180
    .line 181
    move-result-wide v4

    .line 182
    iput-wide v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    .line 183
    .line 184
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 185
    .line 186
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 187
    .line 188
    const/4 v5, 0x4

    .line 189
    if-ne v4, v5, :cond_8

    .line 190
    .line 191
    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 192
    .line 193
    if-nez v2, :cond_7

    .line 194
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v2, "DELIVERY_ACK message without msgStatus ("

    .line 198
    .line 199
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    .line 203
    .line 204
    if-nez v2, :cond_6

    .line 205
    .line 206
    const-string v2, "also missing"

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_6
    const-string v2, "does have"

    .line 210
    .line 211
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v2, " userData)."

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    iput v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_7
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 230
    .line 231
    shl-int/lit8 v1, v1, 0x8

    .line 232
    .line 233
    iput v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 234
    .line 235
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 236
    .line 237
    or-int/2addr v0, v1

    .line 238
    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_8
    if-ne v4, v2, :cond_a

    .line 242
    .line 243
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 244
    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->parseMessageBody()V

    .line 248
    .line 249
    .line 250
    :cond_9
    return-void

    .line 251
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 252
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v2, "Unsupported message type: "

    .line 256
    .line 257
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 261
    .line 262
    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0
.end method
