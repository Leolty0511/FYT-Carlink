.class Landroid/net/dhcp/DhcpRequestPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;[BZ)V
    .locals 8

    .line 1
    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10

    const/16 v0, 0x5dc

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    sget-object v3, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iget-boolean v9, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/dhcp/DhcpPacket;->fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/InetAddress;

    :cond_0
    move-object v5, v0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requested IP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and client IP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DhcpPacket"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v2, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    iget v3, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v6, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    iget-object v7, p0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Landroid/net/dhcp/DhcpStateMachine;->onRequestReceived(ZI[BLjava/net/InetAddress;[BLjava/lang/String;)V

    return-void
.end method

.method public finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 1
    iget-object v3, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    const/4 v4, 0x6

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x35

    const/4 v2, 0x3

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 3
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v2, 0x37

    invoke-virtual {p0, p1, v2, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 4
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    const/16 v2, 0x32

    invoke-virtual {p0, p1, v2, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V

    .line 5
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/InetAddress;

    const/16 v2, 0x36

    invoke-virtual {p0, p1, v2, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V

    const/16 v1, 0x3d

    .line 6
    invoke-virtual {p0, p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " REQUEST, desired IP "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from host \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', param list length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
