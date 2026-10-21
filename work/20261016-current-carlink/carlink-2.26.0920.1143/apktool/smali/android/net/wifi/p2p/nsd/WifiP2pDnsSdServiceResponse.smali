.class public Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.source "SourceFile"


# static fields
.field private static final sVmpack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDnsQueryName:Ljava/lang/String;

.field private mDnsType:I

.field private mInstanceName:Ljava/lang/String;

.field private final mTxtRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    .line 7
    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "_tcp.local."

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x11

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string/jumbo v2, "local."

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x1c

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "_udp.local."

    .line 38
    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 6

    .line 1
    const/4 v1, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move v2, p1

    .line 4
    move v3, p2

    .line 5
    move-object v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->parse()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "Malformed bonjour service response"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public static newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    new-instance p3, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    .line 5
    .line 6
    invoke-direct {p3, p0, p1, p2, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    .line 7
    .line 8
    .line 9
    return-object p3

    .line 10
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method private parse()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    .line 8
    .line 9
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 10
    .line 11
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    return v3

    .line 29
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    .line 42
    .line 43
    const/16 v4, 0xc

    .line 44
    .line 45
    if-ne v2, v4, :cond_4

    .line 46
    .line 47
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    return v3

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-gt v2, v4, :cond_3

    .line 65
    .line 66
    return v3

    .line 67
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    sub-int/2addr v2, v4

    .line 78
    sub-int/2addr v2, v1

    .line 79
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    .line 84
    .line 85
    return v1

    .line 86
    :cond_4
    const/16 v1, 0x10

    .line 87
    .line 88
    if-ne v2, v1, :cond_5

    .line 89
    .line 90
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readTxtData(Ljava/io/DataInputStream;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    return v0

    .line 95
    :cond_5
    return v3

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    return v3
.end method

.method private readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    sget-object v2, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x27

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    const/16 v4, 0xc0

    .line 41
    .line 42
    if-ne v3, v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/String;

    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    return-object v2

    .line 61
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_3
    new-array v3, v3, [B

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    const-string v3, "."

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    return-object v2
.end method

.method private readTxtData(Ljava/io/DataInputStream;)Z
    .locals 5

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-array v1, v1, [B

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 24
    .line 25
    .line 26
    const-string v1, "="

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    array-length v3, v1

    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq v3, v4, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    .line 38
    .line 39
    aget-object v4, v1, v0

    .line 40
    .line 41
    aget-object v1, v1, v2

    .line 42
    .line 43
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    return v2

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    return v0
.end method


# virtual methods
.method public getDnsQueryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsType()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    return v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtRecord()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string/jumbo v1, "serviceType:DnsSd("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    const-string v1, ") status:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    .line 20
    .line 21
    invoke-static {v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    const-string v1, " srcAddr:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 34
    .line 35
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    const-string v1, " version:"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    aput-object v2, v1, v3

    .line 56
    .line 57
    const-string v2, "%02x"

    .line 58
    .line 59
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    const-string v1, " dnsName:"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    const-string v1, " TxtRecord:"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_0

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Ljava/lang/String;

    .line 102
    .line 103
    const-string v3, " key:"

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    const-string v3, " value:"

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    .line 129
    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const-string v1, " InsName:"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0
.end method
