.class public Landroid/net/arp/ArpPeer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARP_LENGTH:I = 0x1c

.field private static final DBG:Z = false

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final IPV4_LENGTH:I = 0x4

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAX_LENGTH:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "ArpPeer"


# instance fields
.field private final L2_BROADCAST:[B

.field private mInterfaceName:Ljava/lang/String;

.field private final mMyAddr:Ljava/net/InetAddress;

.field private final mMyMac:[B

.field private final mPeer:Ljava/net/InetAddress;

.field private final mSocket:Llibcore/net/RawSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Landroid/net/arp/ArpPeer;->mMyMac:[B

    .line 3
    iput-object p1, p0, Landroid/net/arp/ArpPeer;->mInterfaceName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/net/arp/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 5
    iget-object v1, p0, Landroid/net/arp/ArpPeer;->mMyMac:[B

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    instance-of p1, p2, Ljava/net/Inet6Address;

    if-nez p1, :cond_1

    instance-of p1, p4, Ljava/net/Inet6Address;

    if-nez p1, :cond_1

    .line 7
    iput-object p4, p0, Landroid/net/arp/ArpPeer;->mPeer:Ljava/net/InetAddress;

    new-array p1, v0, [B

    .line 8
    iput-object p1, p0, Landroid/net/arp/ArpPeer;->L2_BROADCAST:[B

    const/4 p2, -0x1

    .line 9
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    .line 10
    new-instance p1, Llibcore/net/RawSocket;

    iget-object p2, p0, Landroid/net/arp/ArpPeer;->mInterfaceName:Ljava/lang/String;

    const/16 p3, 0x806

    invoke-direct {p1, p2, p3}, Llibcore/net/RawSocket;-><init>(Ljava/lang/String;S)V

    iput-object p1, p0, Landroid/net/arp/ArpPeer;->mSocket:Llibcore/net/RawSocket;

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IPv6 unsupported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static doArp(Ljava/lang/String;Landroid/net/LinkProperties;III)Z
    .locals 4

    .line 22
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 24
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/RouteInfo;

    .line 26
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    :cond_1
    const/4 p1, 0x1

    .line 27
    :try_start_0
    new-instance v2, Landroid/net/arp/ArpPeer;

    invoke-direct {v2, v0, v1, p0, v3}, Landroid/net/arp/ArpPeer;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Ljava/net/InetAddress;)V

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_1
    if-ge v0, p3, :cond_3

    .line 28
    invoke-virtual {v2, p2}, Landroid/net/arp/ArpPeer;->doArp(I)[B

    move-result-object v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-lt v1, p4, :cond_4

    move p0, p1

    .line 29
    :cond_4
    invoke-virtual {v2}, Landroid/net/arp/ArpPeer;->close()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ARP test initiation failure: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ArpPeer"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/arp/ArpPeer;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v0}, Llibcore/net/RawSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public doArp(I)[B
    .locals 19

    move-object/from16 v0, p0

    const/16 v1, 0x5dc

    .line 1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2
    iget-object v3, v0, Landroid/net/arp/ArpPeer;->mPeer:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move/from16 v6, p1

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    .line 6
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v7, 0x800

    .line 7
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v7, 0x6

    .line 8
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v8, 0x4

    .line 9
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 11
    iget-object v9, v0, Landroid/net/arp/ArpPeer;->mMyMac:[B

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    iget-object v9, v0, Landroid/net/arp/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v9, v7, [B

    .line 13
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 16
    iget-object v9, v0, Landroid/net/arp/ArpPeer;->mSocket:Llibcore/net/RawSocket;

    iget-object v10, v0, Landroid/net/arp/ArpPeer;->L2_BROADCAST:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v2}, Llibcore/net/RawSocket;->write([B[BII)I

    new-array v1, v1, [B

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    cmp-long v2, v9, v4

    if-gez v2, :cond_1

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v9, v4, v9

    .line 19
    iget-object v13, v0, Landroid/net/arp/ArpPeer;->mSocket:Llibcore/net/RawSocket;

    const/4 v15, 0x0

    const/16 v17, -0x1

    long-to-int v2, v9

    const/16 v16, 0x5dc

    move-object v14, v1

    move/from16 v18, v2

    invoke-virtual/range {v13 .. v18}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v2

    const/16 v9, 0x1c

    if-lt v2, v9, :cond_0

    .line 20
    aget-byte v2, v1, v12

    if-nez v2, :cond_0

    aget-byte v2, v1, v6

    if-ne v2, v6, :cond_0

    const/4 v2, 0x2

    aget-byte v9, v1, v2

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    const/4 v9, 0x3

    aget-byte v11, v1, v9

    if-nez v11, :cond_0

    aget-byte v11, v1, v8

    if-ne v11, v7, :cond_0

    const/4 v11, 0x5

    aget-byte v11, v1, v11

    if-ne v11, v8, :cond_0

    aget-byte v11, v1, v7

    if-nez v11, :cond_0

    const/4 v11, 0x7

    aget-byte v11, v1, v11

    if-ne v11, v2, :cond_0

    const/16 v11, 0xe

    aget-byte v11, v1, v11

    aget-byte v13, v3, v12

    if-ne v11, v13, :cond_0

    const/16 v11, 0xf

    aget-byte v11, v1, v11

    aget-byte v13, v3, v6

    if-ne v11, v13, :cond_0

    const/16 v11, 0x10

    aget-byte v11, v1, v11

    aget-byte v2, v3, v2

    if-ne v11, v2, :cond_0

    const/16 v2, 0x11

    aget-byte v2, v1, v2

    aget-byte v9, v3, v9

    if-ne v2, v9, :cond_0

    new-array v2, v7, [B

    .line 21
    invoke-static {v1, v10, v2, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
