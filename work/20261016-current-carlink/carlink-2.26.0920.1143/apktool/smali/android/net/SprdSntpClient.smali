.class public Landroid/net/SprdSntpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SprdSntpClient$InvalidServerReplyException;
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

.field private static final TAG:Ljava/lang/String; = "SprdSntpClient"

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
    new-instance p0, Landroid/net/SprdSntpClient$InvalidServerReplyException;

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
    invoke-direct {p0, p1}, Landroid/net/SprdSntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

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
    new-instance p0, Landroid/net/SprdSntpClient$InvalidServerReplyException;

    .line 38
    .line 39
    const-string/jumbo p1, "zero transmitTime"

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Landroid/net/SprdSntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_3
    new-instance p0, Landroid/net/SprdSntpClient$InvalidServerReplyException;

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
    invoke-direct {p0, p1}, Landroid/net/SprdSntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_4
    new-instance p0, Landroid/net/SprdSntpClient$InvalidServerReplyException;

    .line 60
    .line 61
    const-string/jumbo p1, "unsynchronized server"

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Landroid/net/SprdSntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

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
    invoke-direct {p0, p1, p2}, Landroid/net/SprdSntpClient;->read32([BI)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-int/lit8 p2, p2, 0x4

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroid/net/SprdSntpClient;->read32([BI)J

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

    iget-wide v0, p0, Landroid/net/SprdSntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SprdSntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SprdSntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "address=null,request time failed"

    const-string/jumbo v1, "request ("

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start requestTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SprdSntpClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7b

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Landroid/net/SprdSntpClient;->requestTime([Ljava/net/InetAddress;II)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "address="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",request time failed"

    .line 6
    invoke-static {p2, p1, v3}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception p2

    .line 7
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")time failed: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public requestTime(Ljava/net/InetAddress;II)Z
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "SprdSntpClient"

    const-string/jumbo v0, "round trip: "

    const-string/jumbo v3, "request time failed: "

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 12
    :try_start_0
    new-instance v6, Ljava/net/DatagramSocket;

    invoke-direct {v6}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v5, p3

    .line 13
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v5, 0x30

    new-array v7, v5, [B

    .line 14
    new-instance v8, Ljava/net/DatagramPacket;

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct {v8, v7, v5, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v9, 0x1b

    aput-byte v9, v7, v4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const/16 v13, 0x28

    .line 17
    invoke-direct {v1, v7, v13, v9, v10}, Landroid/net/SprdSntpClient;->writeTimeStamp([BIJ)V

    .line 18
    invoke-virtual {v6, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 19
    new-instance v8, Ljava/net/DatagramPacket;

    invoke-direct {v8, v7, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 20
    invoke-virtual {v6, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v11, v14, v11

    add-long/2addr v9, v11

    aget-byte v5, v7, v4

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3

    int-to-byte v8, v8

    and-int/lit8 v5, v5, 0x7

    int-to-byte v5, v5

    const/16 v16, 0x1

    aget-byte v4, v7, v16

    and-int/lit16 v4, v4, 0xff

    const/16 v13, 0x18

    .line 22
    invoke-direct {v1, v7, v13}, Landroid/net/SprdSntpClient;->readTimeStamp([BI)J

    move-result-wide v17

    const/16 v13, 0x20

    .line 23
    invoke-direct {v1, v7, v13}, Landroid/net/SprdSntpClient;->readTimeStamp([BI)J

    move-result-wide v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v21, v6

    const/16 v13, 0x28

    .line 24
    :try_start_2
    invoke-direct {v1, v7, v13}, Landroid/net/SprdSntpClient;->readTimeStamp([BI)J

    move-result-wide v6

    .line 25
    invoke-static {v8, v5, v4, v6, v7}, Landroid/net/SprdSntpClient;->checkValidServerReply(BBIJ)V

    sub-long v4, v6, v19

    sub-long/2addr v11, v4

    sub-long v19, v19, v17

    sub-long/2addr v6, v9

    add-long v6, v6, v19

    const-wide/16 v4, 0x2

    .line 26
    div-long/2addr v6, v4

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms, clock offset: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v9, v6

    .line 28
    iput-wide v9, v1, Landroid/net/SprdSntpClient;->mNtpTime:J

    .line 29
    iput-wide v14, v1, Landroid/net/SprdSntpClient;->mNtpTimeReference:J

    .line 30
    iput-wide v11, v1, Landroid/net/SprdSntpClient;->mRoundTripTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->close()V

    return v16

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v21, v6

    :goto_0
    move-object/from16 v5, v21

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v21, v6

    :goto_1
    move-object/from16 v5, v21

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 32
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_0

    .line 33
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    const/4 v2, 0x0

    return v2

    :goto_3
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v0
.end method

.method public requestTime([Ljava/net/InetAddress;II)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "close select failed: "

    const-string v3, "SprdSntpClient"

    const/16 v4, 0x8

    new-array v5, v4, [Ljava/nio/channels/DatagramChannel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/4 v9, 0x2

    aput-object v7, v5, v9

    const/4 v10, 0x3

    aput-object v7, v5, v10

    const/4 v11, 0x4

    aput-object v7, v5, v11

    const/4 v12, 0x5

    aput-object v7, v5, v12

    const/4 v13, 0x6

    aput-object v7, v5, v13

    const/4 v14, 0x7

    aput-object v7, v5, v14

    new-array v15, v4, [Ljava/nio/channels/SelectionKey;

    aput-object v7, v15, v6

    aput-object v7, v15, v8

    aput-object v7, v15, v9

    aput-object v7, v15, v10

    aput-object v7, v15, v11

    aput-object v7, v15, v12

    aput-object v7, v15, v13

    aput-object v7, v15, v14

    .line 34
    :try_start_0
    array-length v9, v0

    if-le v9, v4, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :goto_0
    const/16 v9, 0x30

    :try_start_1
    new-array v11, v9, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move v12, v6

    :goto_1
    if-ge v12, v4, :cond_1

    .line 36
    :try_start_2
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v13

    aput-object v13, v5, v12

    .line 37
    invoke-virtual {v13, v6}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v5

    move v5, v6

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    goto/16 :goto_b

    :cond_1
    const/16 v12, 0x1b

    :try_start_3
    aput-byte v12, v11, v6

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const/16 v7, 0x28

    .line 40
    invoke-direct {v1, v11, v7, v12, v13}, Landroid/net/SprdSntpClient;->writeTimeStamp([BIJ)V

    .line 41
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 42
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move v10, v6

    :goto_2
    if-ge v10, v4, :cond_2

    .line 43
    :try_start_4
    new-instance v9, Ljava/net/InetSocketAddress;

    aget-object v8, v0, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v6, 0x7b

    :try_start_5
    invoke-direct {v9, v8, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 44
    aget-object v6, v5, v10

    invoke-virtual {v6, v9}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 45
    aget-object v6, v5, v10

    invoke-virtual {v6, v7}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v6, 0x0

    .line 46
    :try_start_6
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 47
    :try_start_7
    aget-object v6, v5, v10

    const/4 v8, 0x1

    invoke-virtual {v6, v14, v8}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    aput-object v6, v15, v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x30

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object/from16 v16, v5

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v16, v5

    move v5, v6

    move-object v7, v14

    goto/16 :goto_e

    :cond_2
    move/from16 v6, p3

    int-to-long v8, v6

    .line 48
    :try_start_8
    invoke-virtual {v14, v8, v9}, Ljava/nio/channels/Selector;->select(J)I

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-lez v6, :cond_5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_5

    .line 49
    :try_start_9
    aget-object v8, v15, v6

    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 50
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "received Data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    aget-object v8, v5, v6

    invoke-virtual {v8, v7}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/16 v9, 0x30

    if-ne v8, v9, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/16 v9, 0x30

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    .line 53
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    sub-long v8, v6, v16

    add-long/2addr v12, v8

    const/4 v10, 0x0

    :try_start_b
    aget-byte v0, v11, v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    shr-int/lit8 v10, v0, 0x6

    const/4 v15, 0x3

    and-int/2addr v10, v15

    int-to-byte v10, v10

    const/4 v15, 0x7

    and-int/2addr v0, v15

    int-to-byte v0, v0

    move-object/from16 v16, v5

    const/4 v15, 0x1

    :try_start_c
    aget-byte v5, v11, v15

    and-int/lit16 v5, v5, 0xff

    const/16 v15, 0x18

    .line 54
    invoke-direct {v1, v11, v15}, Landroid/net/SprdSntpClient;->readTimeStamp([BI)J

    move-result-wide v19

    const/16 v15, 0x20

    .line 55
    invoke-direct {v1, v11, v15}, Landroid/net/SprdSntpClient;->readTimeStamp([BI)J

    move-result-wide v21
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v15, 0x28

    .line 56
    :try_start_d
    invoke-direct {v1, v11, v15}, Landroid/net/SprdSntpClient;->readTimeStamp([BI)J

    move-result-wide v3

    .line 57
    invoke-static {v10, v0, v5, v3, v4}, Landroid/net/SprdSntpClient;->checkValidServerReply(BBIJ)V

    sub-long v10, v3, v21

    sub-long/2addr v8, v10

    sub-long v21, v21, v19

    sub-long/2addr v3, v12

    add-long v3, v3, v21

    const-wide/16 v10, 0x2

    .line 58
    div-long/2addr v3, v10

    add-long/2addr v12, v3

    .line 59
    iput-wide v12, v1, Landroid/net/SprdSntpClient;->mNtpTime:J

    .line 60
    iput-wide v6, v1, Landroid/net/SprdSntpClient;->mNtpTimeReference:J

    .line 61
    iput-wide v8, v1, Landroid/net/SprdSntpClient;->mRoundTripTime:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 62
    :try_start_e
    invoke-virtual {v14}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    invoke-virtual {v14}, Ljava/nio/channels/Selector;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :cond_6
    move-object/from16 v3, v17

    goto :goto_5

    :catch_1
    move-exception v0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v17

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-lez v18, :cond_8

    move/from16 v4, v18

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_8

    .line 65
    :try_start_f
    aget-object v0, v16, v6

    if-eqz v0, :cond_7

    .line 66
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :catch_2
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    const-string/jumbo v0, "request time Sucess: "

    .line 67
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :catchall_3
    move-exception v0

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v16, v5

    move-object v6, v0

    move v5, v10

    move-object v7, v14

    goto/16 :goto_f

    :cond_9
    move-object/from16 v16, v5

    :try_start_10
    const-string/jumbo v0, "not Sucesss"

    .line 68
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Received ntp response"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v16, v5

    :goto_7
    move-object v6, v0

    :goto_8
    move-object v7, v14

    const/4 v5, 0x0

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v16, v5

    :goto_9
    move-object v7, v14

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object/from16 v16, v5

    move v5, v6

    const/4 v7, 0x0

    goto :goto_e

    :catch_6
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object/from16 v16, v5

    move-object v6, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_f

    :catch_7
    move-exception v0

    move-object/from16 v16, v5

    const/4 v4, 0x0

    :goto_a
    const/4 v7, 0x0

    .line 70
    :goto_b
    :try_start_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request time failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    if-eqz v7, :cond_a

    .line 71
    :try_start_12
    invoke-virtual {v7}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 72
    invoke-virtual {v7}, Ljava/nio/channels/Selector;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_c
    if-lez v4, :cond_c

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v4, :cond_c

    .line 74
    :try_start_13
    aget-object v0, v16, v6

    if-eqz v0, :cond_b

    .line 75
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    :catch_9
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_c
    const/4 v5, 0x0

    return v5

    :catchall_9
    move-exception v0

    const/4 v5, 0x0

    :goto_e
    move-object v6, v0

    :goto_f
    if-eqz v7, :cond_d

    .line 76
    :try_start_14
    invoke-virtual {v7}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 77
    invoke-virtual {v7}, Ljava/nio/channels/Selector;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_10
    if-lez v4, :cond_f

    :goto_11
    if-ge v5, v4, :cond_f

    .line 79
    :try_start_15
    aget-object v0, v16, v5

    if-eqz v0, :cond_e

    .line 80
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    :catch_b
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 81
    :cond_f
    throw v6
.end method
