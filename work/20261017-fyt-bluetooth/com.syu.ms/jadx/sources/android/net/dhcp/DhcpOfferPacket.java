package android.net.dhcp;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class DhcpOfferPacket extends DhcpPacket {
    private final InetAddress mSrcIp;

    public DhcpOfferPacket(int i2, boolean z2, InetAddress inetAddress, InetAddress inetAddress2, byte[] bArr) {
        super(i2, Inet4Address.ANY, inetAddress2, Inet4Address.ANY, Inet4Address.ANY, bArr, z2);
        this.mSrcIp = inetAddress;
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
        dhcpStateMachine.onOfferReceived(this.mBroadcast, this.mTransId, this.mClientMac, this.mYourIp, this.mServerIdentifier);
    }

    @Override // android.net.dhcp.DhcpPacket
    public void finishPacket(ByteBuffer byteBuffer) {
        addTlv(byteBuffer, DhcpPacket.DHCP_MESSAGE_TYPE, (byte) 2);
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
        List<InetAddress> list = this.mDnsServers;
        String str = ", DNS servers: ";
        if (list != null) {
            Iterator<InetAddress> it = list.iterator();
            while (it.hasNext()) {
                str = str + it.next() + " ";
            }
        }
        return string + " OFFER, ip " + this.mYourIp + ", mask " + this.mSubnetMask + str + ", gateway " + this.mGateway + " lease time " + this.mLeaseTime + ", domain " + this.mDomainName;
    }
}
