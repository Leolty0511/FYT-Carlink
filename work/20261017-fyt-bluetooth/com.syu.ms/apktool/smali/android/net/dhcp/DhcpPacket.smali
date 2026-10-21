.class abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLIENT_ID_ETHER:B = 0x1t

.field public static final DHCP_BOOTREPLY:B = 0x2t

.field public static final DHCP_BOOTREQUEST:B = 0x1t

.field public static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field public static final DHCP_CLIENT:S = 0x44s

.field public static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field public static final DHCP_DNS_SERVER:B = 0x6t

.field public static final DHCP_DOMAIN_NAME:B = 0xft

.field public static final DHCP_HOST_NAME:B = 0xct

.field public static final DHCP_LEASE_TIME:B = 0x33t

.field public static final DHCP_MESSAGE:B = 0x38t

.field public static final DHCP_MESSAGE_TYPE:B = 0x35t

.field public static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field public static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field public static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field public static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field public static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field public static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field public static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field public static final DHCP_PARAMETER_LIST:B = 0x37t

.field public static final DHCP_RENEWAL_TIME:B = 0x3at

.field public static final DHCP_REQUESTED_IP:B = 0x32t

.field public static final DHCP_ROUTER:B = 0x3t

.field public static final DHCP_SERVER:S = 0x43s

.field public static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field public static final DHCP_SUBNET_MASK:B = 0x1t

.field public static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field public static final MAX_LENGTH:I = 0x5dc

.field public static final TAG:Ljava/lang/String; = "DhcpPacket"


# instance fields
.field public mBroadcast:Z

.field public mBroadcastAddress:Ljava/net/InetAddress;

.field public final mClientIp:Ljava/net/InetAddress;

.field public final mClientMac:[B

.field public mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public mDomainName:Ljava/lang/String;

.field public mGateway:Ljava/net/InetAddress;

.field public mHostName:Ljava/lang/String;

.field public mLeaseTime:Ljava/lang/Integer;

.field public mMessage:Ljava/lang/String;

.field private final mNextIp:Ljava/net/InetAddress;

.field private final mRelayIp:Ljava/net/InetAddress;

.field public mRequestedIp:Ljava/net/InetAddress;

.field public mRequestedParams:[B

.field public mServerIdentifier:Ljava/net/InetAddress;

.field public mSubnetMask:Ljava/net/InetAddress;

.field public final mTransId:I

.field public final mYourIp:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    .line 3
    iput-object p2, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/InetAddress;

    .line 4
    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/InetAddress;

    .line 5
    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/InetAddress;

    .line 6
    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/InetAddress;

    .line 7
    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    .line 8
    iput-boolean p7, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/InetAddress;Ljava/net/InetAddress;[BLjava/lang/Integer;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/List;Ljava/net/InetAddress;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroid/net/dhcp/DhcpAckPacket;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/net/dhcp/DhcpAckPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    move-object/from16 v0, p9

    .line 2
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p10

    .line 3
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    move-object v0, p6

    .line 4
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, p12

    .line 5
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object v0, p7

    .line 6
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/InetAddress;

    move-object/from16 v0, p11

    .line 7
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    move-object v0, p8

    .line 8
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    const/16 v0, 0x44

    const/16 v1, 0x43

    move v2, p0

    .line 9
    invoke-virtual {v6, p0, v0, v1}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildDiscoverPacket(II[BZ[B)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(I[BZ)V

    .line 2
    iput-object p4, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 p1, 0x43

    const/16 p2, 0x44

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static buildNakPacket(IILjava/net/InetAddress;Ljava/net/InetAddress;[B)Ljava/nio/ByteBuffer;
    .locals 8

    .line 1
    new-instance v7, Landroid/net/dhcp/DhcpNakPacket;

    move-object v0, v7

    move v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p2

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    const-string/jumbo p1, "requested address not available"

    .line 2
    iput-object p1, v7, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 3
    iput-object p3, v7, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    const/16 p1, 0x44

    const/16 p2, 0x43

    .line 4
    invoke-virtual {v7, p0, p1, p2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static buildOfferPacket(IIZLjava/net/InetAddress;Ljava/net/InetAddress;[BLjava/lang/Integer;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/List;Ljava/net/InetAddress;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroid/net/dhcp/DhcpOfferPacket;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    move-object/from16 v0, p9

    .line 2
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v0, p10

    .line 3
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    move-object v0, p6

    .line 4
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v0, p12

    .line 5
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v0, p11

    .line 6
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    move-object v0, p7

    .line 7
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/InetAddress;

    move-object v0, p8

    .line 8
    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    const/16 v0, 0x44

    const/16 v1, 0x43

    move v2, p0

    .line 9
    invoke-virtual {v6, p0, v0, v1}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildRequestPacket(IILjava/net/InetAddress;Z[BLjava/net/InetAddress;Ljava/net/InetAddress;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/dhcp/DhcpRequestPacket;

    invoke-direct {v0, p1, p2, p4, p3}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ILjava/net/InetAddress;[BZ)V

    .line 2
    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    .line 3
    iput-object p6, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    .line 4
    iput-object p8, v0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 5
    iput-object p7, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 p1, 0x43

    const/16 p2, 0x44

    .line 6
    invoke-virtual {v0, p0, p1, p2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v0, p4, p3

    .line 5
    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [S

    .line 6
    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    aget-short v3, v2, v1

    .line 8
    invoke-direct {p0, v3}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v3

    add-int/2addr p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    if-eq p4, p3, :cond_2

    .line 9
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    int-to-short p1, p1

    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x100

    int-to-short p1, p1

    :cond_1
    mul-int/lit16 p1, p1, 0x100

    add-int/2addr p2, p1

    :cond_2
    shr-int/lit8 p1, p2, 0x10

    const p3, 0xffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x10

    and-int/2addr p2, p3

    add-int/2addr p1, p2

    and-int/2addr p1, p3

    not-int p1, p1

    int-to-short p1, p1

    .line 10
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result p1

    return p1
.end method

.method public static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-nez v1, :cond_0

    new-array v5, v3, [B

    new-array v6, v3, [B

    .line 3
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    const/16 v6, 0x800

    if-eq v5, v6, :cond_0

    return-object v4

    :cond_0
    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v11, v4

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 10
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 12
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 14
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 15
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v6

    .line 16
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    const/16 v7, 0x11

    if-eq v1, v7, :cond_3

    return-object v4

    .line 17
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 18
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 20
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    const/16 v7, 0x43

    if-eq v1, v7, :cond_4

    const/16 v7, 0x44

    if-eq v1, v7, :cond_4

    return-object v4

    :cond_4
    move-object v11, v6

    .line 21
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 22
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 23
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 24
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 25
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 26
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 27
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    move v10, v5

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    const/4 v6, 0x4

    new-array v8, v6, [B

    .line 28
    :try_start_0
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v14

    .line 30
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 31
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    .line 32
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 33
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    .line 34
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v17
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-array v9, v1, [B

    .line 37
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x40

    add-int/lit16 v8, v8, 0x80

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v8, 0x63825363

    if-eq v1, v8, :cond_6

    return-object v4

    :cond_6
    const/4 v1, -0x1

    move v12, v1

    move-object v6, v4

    move-object v7, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move v8, v5

    .line 40
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-ge v4, v3, :cond_14

    if-eqz v8, :cond_14

    .line 41
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-ne v3, v1, :cond_7

    const/4 v8, 0x0

    goto/16 :goto_9

    .line 42
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-eq v3, v5, :cond_11

    const/4 v1, 0x3

    if-eq v3, v1, :cond_10

    const/4 v1, 0x6

    if-eq v3, v1, :cond_f

    const/16 v1, 0xc

    if-eq v3, v1, :cond_e

    const/16 v1, 0xf

    if-eq v3, v1, :cond_d

    const/16 v1, 0x1c

    if-eq v3, v1, :cond_c

    const/16 v1, 0x32

    if-eq v3, v1, :cond_b

    const/16 v1, 0x33

    if-eq v3, v1, :cond_a

    const/16 v1, 0x3c

    if-eq v3, v1, :cond_9

    const/16 v1, 0x3d

    if-eq v3, v1, :cond_8

    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v1, v4, :cond_12

    add-int/lit8 v3, v3, 0x1

    .line 43
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 44
    :pswitch_0
    invoke-static {v0, v4}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_5

    .line 45
    :pswitch_1
    new-array v1, v4, [B

    .line 46
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v24, v1

    goto :goto_5

    .line 47
    :pswitch_2
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v1

    move-object/from16 v25, v1

    goto :goto_7

    .line 48
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    move v12, v1

    move v3, v5

    goto :goto_8

    .line 49
    :cond_8
    new-array v1, v4, [B

    .line 50
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 51
    :cond_9
    invoke-static {v0, v4}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    goto :goto_5

    .line 52
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_7

    .line 53
    :cond_b
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_7

    .line 54
    :cond_c
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v1

    move-object v6, v1

    goto :goto_7

    .line 55
    :cond_d
    invoke-static {v0, v4}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_5

    .line 56
    :cond_e
    invoke-static {v0, v4}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    :goto_5
    move v3, v4

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_12

    .line 57
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x4

    goto :goto_6

    .line 58
    :cond_10
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_7

    .line 59
    :cond_11
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;

    move-result-object v1

    move-object/from16 v26, v1

    :goto_7
    const/4 v3, 0x4

    :cond_12
    :goto_8
    if-eq v3, v4, :cond_13

    const/4 v1, 0x0

    return-object v1

    :cond_13
    :goto_9
    const/4 v1, -0x1

    const/4 v3, 0x6

    goto/16 :goto_3

    :cond_14
    packed-switch v12, :pswitch_data_1

    :pswitch_4
    const/4 v0, 0x0

    .line 60
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unimplemented type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    .line 61
    :pswitch_5
    new-instance v0, Landroid/net/dhcp/DhcpInformPacket;

    move-object v12, v0

    move-object/from16 v18, v9

    invoke-direct/range {v12 .. v18}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    goto :goto_a

    .line 62
    :pswitch_6
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    move-object v12, v0

    move-object/from16 v18, v9

    invoke-direct/range {v12 .. v18}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    goto :goto_a

    .line 63
    :pswitch_7
    new-instance v0, Landroid/net/dhcp/DhcpAckPacket;

    move-object v8, v0

    move-object v1, v9

    move v9, v13

    move-object v12, v15

    move-object v13, v1

    invoke-direct/range {v8 .. v13}, Landroid/net/dhcp/DhcpAckPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    goto :goto_a

    :pswitch_8
    move-object v1, v9

    .line 64
    new-instance v0, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object v12, v0

    move-object/from16 v18, v1

    invoke-direct/range {v12 .. v18}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V

    goto :goto_a

    :pswitch_9
    move-object v1, v9

    .line 65
    new-instance v0, Landroid/net/dhcp/DhcpRequestPacket;

    invoke-direct {v0, v13, v14, v1, v10}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ILjava/net/InetAddress;[BZ)V

    goto :goto_a

    :pswitch_a
    move-object v1, v9

    .line 66
    new-instance v0, Landroid/net/dhcp/DhcpOfferPacket;

    move-object v8, v0

    move v9, v13

    move-object v12, v15

    move-object v13, v1

    invoke-direct/range {v8 .. v13}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V

    goto :goto_a

    :pswitch_b
    move-object v1, v9

    .line 67
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, v13, v1, v10}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(I[BZ)V

    .line 68
    :goto_a
    iput-object v6, v0, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    .line 69
    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 70
    iput-object v7, v0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    move-object/from16 v4, v19

    .line 71
    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mGateway:Ljava/net/InetAddress;

    move-object/from16 v4, v20

    .line 72
    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    move-object/from16 v4, v21

    .line 73
    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    move-object/from16 v4, v22

    .line 74
    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    move-object/from16 v4, v23

    .line 75
    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    move-object/from16 v4, v24

    .line 76
    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    move-object/from16 v4, v25

    .line 77
    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    move-object/from16 v4, v26

    .line 78
    iput-object v4, v0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/InetAddress;

    return-object v0

    :pswitch_c
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-object v0, v4

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_c
        :pswitch_4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static decodeFullPacket([BI)Landroid/net/dhcp/DhcpPacket;
    .locals 1

    .line 79
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 80
    invoke-static {p0, p1}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    move-result-object p0

    return-object p0
.end method

.method private intAbs(S)I
    .locals 1

    if-gez p1, :cond_0

    const/high16 v0, 0x10000

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public static macToString([B)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 3

    .line 1
    new-array v0, p1, [B

    .line 2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3
    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/InetAddress;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 13
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x4

    .line 14
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 16
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    :cond_0
    return-void
.end method

.method public addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/net/InetAddress;

    .line 12
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addTlv(Ljava/nio/ByteBuffer;B[B)V
    .locals 0

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    array-length p2, p3

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method public abstract doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
.end method

.method public fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    .line 2
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p3

    .line 3
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, 0x11

    const/16 v1, 0x40

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    const/16 v5, 0x45

    .line 5
    invoke-virtual {p6, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 8
    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v6, 0x4000

    .line 10
    invoke-virtual {p6, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 14
    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p6, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p6, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    .line 18
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    .line 19
    invoke-virtual {p6, p5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p6, p4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result p4

    .line 22
    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result p5

    .line 24
    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    move p2, v4

    move p3, p2

    move p4, p3

    move p5, p4

    move v5, p5

    move v6, v5

    .line 25
    :goto_0
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {p6, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    iget-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length p7, p7

    int-to-byte p7, p7

    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 29
    iget p7, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-eqz p8, :cond_1

    const/16 p7, -0x8000

    .line 31
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 33
    :goto_1
    iget-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/InetAddress;

    invoke-virtual {p7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 34
    iget-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/InetAddress;

    invoke-virtual {p7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 35
    iget-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/InetAddress;

    invoke-virtual {p7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 36
    iget-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/InetAddress;

    invoke-virtual {p7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    iget-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result p7

    iget-object p8, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length p8, p8

    sub-int/2addr v2, p8

    add-int/2addr p7, v2

    add-int/2addr p7, v1

    add-int/lit16 p7, p7, 0x80

    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const p7, 0x63825363

    .line 39
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {p0, p6}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 41
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result p7

    and-int/2addr p7, v3

    if-ne p7, v3, :cond_2

    .line 42
    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_2
    if-ne p1, v3, :cond_3

    .line 43
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr p1, p3

    int-to-short p1, p1

    .line 44
    invoke-virtual {p6, p4, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 p4, v6, 0x2

    .line 45
    invoke-virtual {p6, p4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p4

    invoke-direct {p0, p4}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result p4

    add-int/2addr p4, v4

    add-int/lit8 p7, v6, 0x4

    .line 46
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p7

    invoke-direct {p0, p7}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result p7

    add-int/2addr p4, p7

    add-int/lit8 p7, v6, 0x6

    .line 47
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p7

    invoke-direct {p0, p7}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result p7

    add-int/2addr p4, p7

    add-int/lit8 p7, v6, 0x8

    .line 48
    invoke-virtual {p6, p7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p7

    invoke-direct {p0, p7}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result p7

    add-int/2addr p4, p7

    add-int/2addr p4, v0

    add-int/2addr p4, p1

    .line 49
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-direct {p0, p6, p4, p3, p1}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p6, p5, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p6, v5, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 51
    invoke-direct {p0, p6, v4, v4, p2}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p6, v6, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    :cond_3
    return-void
.end method

.method public abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getTransactionId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v0}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
