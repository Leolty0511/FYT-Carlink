.class public Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    const-string v0, "de"

    .line 2
    .line 3
    const-string v1, "en"

    .line 4
    .line 5
    const-string v2, "it"

    .line 6
    .line 7
    const-string v3, "fr"

    .line 8
    .line 9
    const-string v4, "es"

    .line 10
    .line 11
    const-string v5, "nl"

    .line 12
    .line 13
    const-string v6, "sv"

    .line 14
    .line 15
    const-string v7, "da"

    .line 16
    .line 17
    const-string v8, "pt"

    .line 18
    .line 19
    const-string v9, "fi"

    .line 20
    .line 21
    const-string v10, "no"

    .line 22
    .line 23
    const-string v11, "el"

    .line 24
    .line 25
    const-string v12, "tr"

    .line 26
    .line 27
    const-string v13, "hu"

    .line 28
    .line 29
    const-string v14, "pl"

    .line 30
    .line 31
    const/4 v15, 0x0

    .line 32
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "cs"

    .line 39
    .line 40
    const-string v2, "he"

    .line 41
    .line 42
    const-string v3, "ar"

    .line 43
    .line 44
    const-string v4, "ru"

    .line 45
    .line 46
    const-string v5, "is"

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    .line 64
    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSmsCbMessage(Landroid/content/Context;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 2

    .line 17
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 18
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 16

    move-object/from16 v0, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v4

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v7

    const/4 v8, 0x0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v1

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v11

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v12

    move-object v2, v0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, v4

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    move-object/from16 v6, p1

    .line 9
    invoke-static {v6, v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v5

    .line 10
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    .line 11
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v6, p1

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    :cond_2
    move v13, v3

    .line 13
    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v2, 0x1

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v8

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v15

    move-object v5, v0

    move v6, v2

    move-object/from16 v9, p2

    invoke-direct/range {v5 .. v15}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v0
.end method

.method public static createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[BI)Landroid/telephony/SmsCbMessage;
    .locals 17

    move-object/from16 v0, p3

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v3, 0x1

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v5

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v7

    const/4 v8, 0x0

    const-string v9, "ETWS"

    const/4 v10, 0x3

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v12

    move-object v2, v0

    move-object/from16 v6, p2

    move/from16 v13, p4

    invoke-direct/range {v2 .. v13}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;I)V

    return-object v0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, v4

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    move-object/from16 v6, p1

    .line 26
    invoke-static {v6, v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v5

    .line 27
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    .line 28
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v6, p1

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    :cond_2
    move v13, v3

    const-string v0, "GsmSmsCbMessage"

    const-string v2, "create sms cb message with a sub_id"

    .line 30
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v2, 0x1

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v8

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v15

    move-object v5, v0

    move v6, v2

    move-object/from16 v9, p2

    move/from16 v16, p4

    invoke-direct/range {v5 .. v16}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;I)V

    return-object v0
.end method

.method private static getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const-string p0, ""

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const p1, 0x10401cd

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    const p1, 0x10401ce

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    const p1, 0x10401cc

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_3
    const p1, 0x10401cf

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_4
    const p1, 0x10401cb

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method private static parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingScheme()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v1, v0, 0xf0

    .line 6
    .line 7
    shr-int/lit8 v1, v1, 0x4

    .line 8
    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    if-eq v1, v2, :cond_9

    .line 12
    .line 13
    const/16 v2, 0xe

    .line 14
    .line 15
    if-eq v1, v2, :cond_9

    .line 16
    .line 17
    const/16 v2, 0xf

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    const/4 v7, 0x3

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :pswitch_0
    and-int/lit8 v0, v0, 0xc

    .line 31
    .line 32
    shr-int/2addr v0, v3

    .line 33
    if-eq v0, v4, :cond_4

    .line 34
    .line 35
    if-eq v0, v3, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    move v4, v6

    .line 39
    goto :goto_0

    .line 40
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    .line 41
    .line 42
    and-int/2addr v0, v2

    .line 43
    aget-object v0, v1, v0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_2
    and-int/2addr v0, v2

    .line 47
    if-ne v0, v4, :cond_1

    .line 48
    .line 49
    :goto_0
    move-object v12, v5

    .line 50
    move v3, v7

    .line 51
    goto :goto_4

    .line 52
    :cond_1
    move v3, v4

    .line 53
    move-object v12, v5

    .line 54
    goto :goto_4

    .line 55
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    .line 56
    .line 57
    and-int/2addr v0, v2

    .line 58
    aget-object v0, v1, v0

    .line 59
    .line 60
    :goto_1
    move-object v5, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    and-int/lit8 v0, v0, 0x4

    .line 63
    .line 64
    shr-int/2addr v0, v3

    .line 65
    if-ne v0, v4, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    :goto_2
    :pswitch_4
    move v3, v4

    .line 69
    :cond_4
    :goto_3
    move-object v12, v5

    .line 70
    move v4, v6

    .line 71
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/4 v0, 0x6

    .line 76
    if-eqz p0, :cond_8

    .line 77
    .line 78
    aget-byte p0, p1, v0

    .line 79
    .line 80
    array-length v0, p1

    .line 81
    mul-int/lit8 v1, p0, 0x53

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x7

    .line 84
    .line 85
    if-lt v0, v1, :cond_7

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    :goto_5
    if-ge v6, p0, :cond_6

    .line 93
    .line 94
    mul-int/lit8 v1, v6, 0x53

    .line 95
    .line 96
    add-int/lit8 v9, v1, 0x7

    .line 97
    .line 98
    add-int/lit8 v1, v9, 0x52

    .line 99
    .line 100
    aget-byte v10, p1, v1

    .line 101
    .line 102
    const/16 v1, 0x52

    .line 103
    .line 104
    if-gt v10, v1, :cond_5

    .line 105
    .line 106
    move-object v7, p1

    .line 107
    move v8, v3

    .line 108
    move v11, v4

    .line 109
    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 114
    .line 115
    move-object v12, v2

    .line 116
    check-cast v12, Ljava/lang/String;

    .line 117
    .line 118
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string p1, "Page length "

    .line 131
    .line 132
    const-string v0, " exceeds maximum value 82"

    .line 133
    .line 134
    invoke-static {p1, v10, v0}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_6
    new-instance p0, Landroid/util/Pair;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {p0, v12, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v2, "Pdu length "

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    array-length p1, p1

    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p1, " does not match "

    .line 166
    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string p0, " pages"

    .line 174
    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :cond_8
    array-length p0, p1

    .line 187
    add-int/lit8 v10, p0, -0x6

    .line 188
    .line 189
    const/4 v9, 0x6

    .line 190
    move-object v7, p1

    .line 191
    move v8, v3

    .line 192
    move v11, v4

    .line 193
    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :cond_9
    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 199
    .line 200
    const-string p1, "Unsupported GSM dataCodingScheme "

    .line 201
    .line 202
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p0

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZ",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    if-eq p1, v2, :cond_2

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p4, :cond_1

    .line 12
    .line 13
    array-length p1, p0

    .line 14
    add-int/lit8 p4, p2, 0x2

    .line 15
    .line 16
    if-lt p1, p4, :cond_1

    .line 17
    .line 18
    invoke-static {p0, p2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p5

    .line 22
    add-int/lit8 p3, p3, -0x2

    .line 23
    .line 24
    move p2, p4

    .line 25
    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    .line 26
    .line 27
    const p4, 0xfffe

    .line 28
    .line 29
    .line 30
    and-int/2addr p3, p4

    .line 31
    const-string p4, "utf-16"

    .line 32
    .line 33
    invoke-direct {p1, p0, p2, p3, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    move-object p0, p1

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p2, "Error decoding UTF-16 message"

    .line 42
    .line 43
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_2
    mul-int/lit8 p3, p3, 0x8

    .line 48
    .line 49
    div-int/lit8 p3, p3, 0x7

    .line 50
    .line 51
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p4, :cond_3

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-le p1, v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p5

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :cond_3
    :goto_0
    if-eqz p0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    sub-int/2addr p1, v2

    .line 80
    :goto_1
    if-ltz p1, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const/16 p3, 0xd

    .line 87
    .line 88
    if-eq p2, p3, :cond_4

    .line 89
    .line 90
    add-int/2addr p1, v2

    .line 91
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    const-string p0, ""

    .line 100
    .line 101
    :cond_6
    :goto_2
    new-instance p1, Landroid/util/Pair;

    .line 102
    .line 103
    invoke-direct {p1, p5, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-object p1
.end method
