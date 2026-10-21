.class Landroid/net/dhcp/DhcpDiscoverPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(I[BZ)V
    .locals 8

    .line 1
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    move v7, p3

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
    sget-object v1, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    .line 3
    sget-object v3, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/dhcp/DhcpPacket;->fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    iget v1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v3, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/net/dhcp/DhcpStateMachine;->onDiscoverReceived(ZI[B[B)V

    return-void
.end method

.method public finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/16 v0, 0x35

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 2
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v1, 0x37

    invoke-virtual {p0, p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 3
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

    const-string v0, " DISCOVER "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    if-eqz v0, :cond_0

    const-string v0, "broadcast "

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unicast "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
