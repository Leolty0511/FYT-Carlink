package android.net.dhcp;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class DhcpDiscoverPacket extends DhcpPacket {
    public DhcpDiscoverPacket(int i2, byte[] bArr, boolean z2) {
        super(i2, Inet4Address.ANY, Inet4Address.ANY, Inet4Address.ANY, Inet4Address.ANY, bArr, z2);
    }

    @Override // android.net.dhcp.DhcpPacket
    public ByteBuffer buildPacket(int i2, short s2, short s3) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(DhcpPacket.MAX_LENGTH);
        InetAddress inetAddress = Inet4Address.ALL;
        fillInPacket(i2, Inet4Address.ALL, Inet4Address.ANY, s2, s3, byteBufferAllocate, (byte) 1, true);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override // android.net.dhcp.DhcpPacket
    public void doNextOp(DhcpStateMachine dhcpStateMachine) {
        dhcpStateMachine.onDiscoverReceived(this.mBroadcast, this.mTransId, this.mClientMac, this.mRequestedParams);
    }

    @Override // android.net.dhcp.DhcpPacket
    public void finishPacket(ByteBuffer byteBuffer) {
        addTlv(byteBuffer, DhcpPacket.DHCP_MESSAGE_TYPE, (byte) 1);
        addTlv(byteBuffer, DhcpPacket.DHCP_PARAMETER_LIST, this.mRequestedParams);
        addTlvEnd(byteBuffer);
    }

    @Override // android.net.dhcp.DhcpPacket
    public String toString() {
        String string = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(" DISCOVER ");
        sb.append(this.mBroadcast ? "broadcast " : "unicast ");
        return sb.toString();
    }
}
