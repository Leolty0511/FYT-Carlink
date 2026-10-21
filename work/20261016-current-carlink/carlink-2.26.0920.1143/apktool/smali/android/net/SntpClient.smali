.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 p0, 0x4

    .line 5
    if-eq p1, p0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x5

    .line 8
    if-ne p1, p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    .line 12
    .line 13
    const-string/jumbo p2, "untrusted mode: "

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 25
    .line 26
    const/16 p0, 0xf

    .line 27
    .line 28
    if-gt p2, p0, :cond_3

    .line 29
    .line 30
    const-wide/16 p0, 0x0

    .line 31
    .line 32
    cmp-long p0, p3, p0

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    .line 38
    .line 39
    const-string/jumbo p1, "zero transmitTime"

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_3
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    .line 47
    .line 48
    const-string/jumbo p1, "untrusted stratum: "

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_4
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    .line 60
    .line 61
    const-string/jumbo p1, "unsynchronized server"

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method private read32([BI)J
    .locals 5

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    add-int/lit8 v1, p2, 0x1

    .line 4
    .line 5
    aget-byte v1, p1, v1

    .line 6
    .line 7
    add-int/lit8 v2, p2, 0x2

    .line 8
    .line 9
    aget-byte v2, p1, v2

    .line 10
    .line 11
    add-int/lit8 p2, p2, 0x3

    .line 12
    .line 13
    aget-byte p1, p1, p2

    .line 14
    .line 15
    and-int/lit16 p2, v0, 0x80

    .line 16
    .line 17
    const/16 v3, 0x80

    .line 18
    .line 19
    if-ne p2, v3, :cond_0

    .line 20
    .line 21
    and-int/lit8 p2, v0, 0x7f

    .line 22
    .line 23
    add-int/lit16 v0, p2, 0x80

    .line 24
    .line 25
    :cond_0
    and-int/lit16 p2, v1, 0x80

    .line 26
    .line 27
    if-ne p2, v3, :cond_1

    .line 28
    .line 29
    and-int/lit8 p2, v1, 0x7f

    .line 30
    .line 31
    add-int/lit16 v1, p2, 0x80

    .line 32
    .line 33
    :cond_1
    and-int/lit16 p2, v2, 0x80

    .line 34
    .line 35
    if-ne p2, v3, :cond_2

    .line 36
    .line 37
    and-int/lit8 p2, v2, 0x7f

    .line 38
    .line 39
    add-int/lit16 v2, p2, 0x80

    .line 40
    .line 41
    :cond_2
    and-int/lit16 p2, p1, 0x80

    .line 42
    .line 43
    if-ne p2, v3, :cond_3

    .line 44
    .line 45
    and-int/lit8 p1, p1, 0x7f

    .line 46
    .line 47
    add-int/2addr p1, v3

    .line 48
    :cond_3
    int-to-long v3, v0

    .line 49
    const/16 p2, 0x18

    .line 50
    .line 51
    shl-long/2addr v3, p2

    .line 52
    int-to-long v0, v1

    .line 53
    const/16 p2, 0x10

    .line 54
    .line 55
    shl-long/2addr v0, p2

    .line 56
    add-long/2addr v3, v0

    .line 57
    int-to-long v0, v2

    .line 58
    const/16 p2, 0x8

    .line 59
    .line 60
    shl-long/2addr v0, p2

    .line 61
    add-long/2addr v3, v0

    .line 62
    int-to-long p1, p1

    .line 63
    add-long/2addr v3, p1

    .line 64
    return-wide v3
.end method

.method private readTimeStamp([BI)J
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-int/lit8 p2, p2, 0x4

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    cmp-long v4, p1, v2

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return-wide v2

    .line 22
    :cond_0
    const-wide v2, 0x83aa7e80L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    sub-long/2addr v0, v2

    .line 28
    const-wide/16 v2, 0x3e8

    .line 29
    .line 30
    mul-long/2addr v0, v2

    .line 31
    mul-long/2addr p1, v2

    .line 32
    const-wide v2, 0x100000000L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    div-long/2addr p1, v2

    .line 38
    add-long/2addr p1, v0

    .line 39
    return-wide p1
.end method

.method private writeTimeStamp([BIJ)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p3, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    add-int/lit8 p3, p2, 0x8

    .line 9
    .line 10
    invoke-static {p1, p2, p3, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 15
    .line 16
    div-long v4, p3, v2

    .line 17
    .line 18
    mul-long v6, v4, v2

    .line 19
    .line 20
    sub-long/2addr p3, v6

    .line 21
    const-wide v6, 0x83aa7e80L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    add-long/2addr v4, v6

    .line 27
    add-int/lit8 v0, p2, 0x1

    .line 28
    .line 29
    const/16 v6, 0x18

    .line 30
    .line 31
    shr-long v7, v4, v6

    .line 32
    .line 33
    long-to-int v7, v7

    .line 34
    int-to-byte v7, v7

    .line 35
    aput-byte v7, p1, p2

    .line 36
    .line 37
    add-int/lit8 p2, v0, 0x1

    .line 38
    .line 39
    const/16 v7, 0x10

    .line 40
    .line 41
    shr-long v8, v4, v7

    .line 42
    .line 43
    long-to-int v8, v8

    .line 44
    int-to-byte v8, v8

    .line 45
    aput-byte v8, p1, v0

    .line 46
    .line 47
    add-int/lit8 v0, p2, 0x1

    .line 48
    .line 49
    const/16 v8, 0x8

    .line 50
    .line 51
    shr-long v9, v4, v8

    .line 52
    .line 53
    long-to-int v9, v9

    .line 54
    int-to-byte v9, v9

    .line 55
    aput-byte v9, p1, p2

    .line 56
    .line 57
    add-int/lit8 p2, v0, 0x1

    .line 58
    .line 59
    shr-long/2addr v4, v1

    .line 60
    long-to-int v1, v4

    .line 61
    int-to-byte v1, v1

    .line 62
    aput-byte v1, p1, v0

    .line 63
    .line 64
    const-wide v0, 0x100000000L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    mul-long/2addr p3, v0

    .line 70
    div-long/2addr p3, v2

    .line 71
    add-int/lit8 v0, p2, 0x1

    .line 72
    .line 73
    shr-long v1, p3, v6

    .line 74
    .line 75
    long-to-int v1, v1

    .line 76
    int-to-byte v1, v1

    .line 77
    aput-byte v1, p1, p2

    .line 78
    .line 79
    add-int/lit8 p2, v0, 0x1

    .line 80
    .line 81
    shr-long v1, p3, v7

    .line 82
    .line 83
    long-to-int v1, v1

    .line 84
    int-to-byte v1, v1

    .line 85
    aput-byte v1, p1, v0

    .line 86
    .line 87
    add-int/lit8 v0, p2, 0x1

    .line 88
    .line 89
    shr-long/2addr p3, v8

    .line 90
    long-to-int p3, p3

    .line 91
    int-to-byte p3, p3

    .line 92
    aput-byte p3, p1, p2

    .line 93
    .line 94
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 95
    .line 96
    .line 97
    move-result-wide p2

    .line 98
    const-wide v1, 0x406fe00000000000L    # 255.0

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    mul-double/2addr p2, v1

    .line 104
    double-to-int p2, p2

    .line 105
    int-to-byte p2, p2

    .line 106
    aput-byte p2, p1, v0

    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x7b

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;II)Z

    move-result p1

    return p1

    :catch_0
    move-exception p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "request time failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SntpClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public requestTime(Ljava/net/InetAddress;II)Z
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "SntpClient"

    const-string/jumbo v0, "round trip: "

    const-string/jumbo v3, "request time failed: "

    const/16 v4, -0xbf

    .line 5
    invoke-static {v4}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    :try_start_0
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v6, p3

    .line 7
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v6, 0x30

    new-array v8, v6, [B

    .line 8
    new-instance v9, Ljava/net/DatagramPacket;

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-direct {v9, v8, v6, v10, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v11, 0x1b

    aput-byte v11, v8, v5

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/16 v15, 0x28

    .line 11
    invoke-direct {v1, v8, v15, v11, v12}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 12
    invoke-virtual {v7, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 13
    new-instance v9, Ljava/net/DatagramPacket;

    invoke-direct {v9, v8, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 14
    invoke-virtual {v7, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v13, v5, v13

    add-long/2addr v11, v13

    const/4 v9, 0x0

    aget-byte v16, v8, v9

    shr-int/lit8 v17, v16, 0x6

    and-int/lit8 v9, v17, 0x3

    int-to-byte v9, v9

    and-int/lit8 v15, v16, 0x7

    int-to-byte v15, v15

    const/16 v16, 0x1

    aget-byte v10, v8, v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    and-int/lit16 v10, v10, 0xff

    move-object/from16 v17, v3

    const/16 v3, 0x18

    .line 16
    :try_start_2
    invoke-direct {v1, v8, v3}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v18

    const/16 v3, 0x20

    .line 17
    invoke-direct {v1, v8, v3}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v22, v4

    const/16 v3, 0x28

    .line 18
    :try_start_3
    invoke-direct {v1, v8, v3}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v3

    .line 19
    invoke-static {v9, v15, v10, v3, v4}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    sub-long v8, v3, v20

    sub-long/2addr v13, v8

    sub-long v20, v20, v18

    sub-long/2addr v3, v11

    add-long v3, v3, v20

    const-wide/16 v8, 0x2

    .line 20
    div-long/2addr v3, v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13, v14, v3, v4}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    .line 22
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms, clock offset: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v11, v3

    .line 23
    iput-wide v11, v1, Landroid/net/SntpClient;->mNtpTime:J

    .line 24
    iput-wide v5, v1, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 25
    iput-wide v13, v1, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    .line 27
    invoke-static/range {v22 .. v22}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return v16

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v22, v4

    :goto_0
    move-object v6, v7

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v17, v3

    :goto_1
    move/from16 v22, v4

    :goto_2
    move-object v6, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move/from16 v22, v4

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v22, v4

    .line 28
    :goto_3
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v6, :cond_0

    .line 30
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    .line 31
    :cond_0
    invoke-static/range {v22 .. v22}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v2, 0x0

    return v2

    :catchall_3
    move-exception v0

    :goto_4
    if-eqz v6, :cond_1

    .line 32
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    .line 33
    :cond_1
    invoke-static/range {v22 .. v22}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
