package android.net.dhcp;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class DhcpAckPacket extends DhcpPacket {
    private final InetAddress mSrcIp;

    public DhcpAckPacket(int i2, boolean z2, InetAddress inetAddress, InetAddress inetAddress2, byte[] bArr) {
        super(i2, Inet4Address.ANY, inetAddress2, inetAddress, Inet4Address.ANY, bArr, z2);
        this.mBroadcast = z2;
        this.mSrcIp = inetAddress;
    }

    private static final int getInt(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // android.net.dhcp.DhcpPacket
    public ByteBuffer buildPacket(int i2, short s2, short s3) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(DhcpPacket.MAX_LENGTH);
        fillInPacket(i2, this.mBroadcast ? Inet4Address.ALL : this.mYourIp, this.mBroadcast ? Inet4Address.ANY : this.mSrcIp, s2, s3, byteBufferAllocate, (byte) 2, this.mBroadcast);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override // android.net.dhcp.DhcpPacket
    public void doNextOp(DhcpStateMachine dhcpStateMachine) {
        dhcpStateMachine.onAckReceived(this.mYourIp, this.mSubnetMask, this.mGateway, this.mDnsServers, this.mServerIdentifier, getInt(this.mLeaseTime));
    }

    @Override // android.net.dhcp.DhcpPacket
    public void finishPacket(ByteBuffer byteBuffer) {
        addTlv(byteBuffer, DhcpPacket.DHCP_MESSAGE_TYPE, (byte) 5);
        addTlv(byteBuffer, DhcpPacket.DHCP_SERVER_IDENTIFIER, this.mServerIdentifier);
        addTlv(byteBuffer, DhcpPacket.DHCP_LEASE_TIME, this.mLeaseTime);
        Integer num = this.mLeaseTime;
        if (num != null) {
            addTlv(byteBuffer, DhcpPacket.DHCP_RENEWAL_TIME, Integer.valueOf(num.intValue() / 2));
        }
        addTlv(byteBuffer, (byte) 1, this.mSubnetMask);
        addTlv(byteBuffer, (byte) 3, this.mGateway);
        addTlv(byteBuffer, DhcpPacket.DHCP_DOMAIN_NAME, this.mDomainName);
        addTlv(byteBuffer, DhcpPacket.DHCP_BROADCAST_ADDRESS, this.mBroadcastAddress);
        addTlv(byteBuffer, (byte) 6, this.mDnsServers);
        addTlvEnd(byteBuffer);
    }

    @Override // android.net.dhcp.DhcpPacket
    public String toString() {
        String string = super.toString();
        Iterator<InetAddress> it = this.mDnsServers.iterator();
        String str = " DNS servers: ";
        while (it.hasNext()) {
            str = str + it.next().toString() + " ";
        }
        return string + " ACK: your new IP " + this.mYourIp + ", netmask " + this.mSubnetMask + ", gateway " + this.mGateway + str + ", lease time " + this.mLeaseTime;
    }
}
