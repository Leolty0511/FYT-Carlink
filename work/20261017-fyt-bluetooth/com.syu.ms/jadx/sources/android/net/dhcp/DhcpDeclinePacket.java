package android.net.dhcp;

import java.net.InetAddress;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class DhcpDeclinePacket extends DhcpPacket {
    public DhcpDeclinePacket(int i2, InetAddress inetAddress, InetAddress inetAddress2, InetAddress inetAddress3, InetAddress inetAddress4, byte[] bArr) {
        super(i2, inetAddress, inetAddress2, inetAddress3, inetAddress4, bArr, false);
    }

    @Override // android.net.dhcp.DhcpPacket
    public ByteBuffer buildPacket(int i2, short s2, short s3) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(DhcpPacket.MAX_LENGTH);
        fillInPacket(i2, this.mClientIp, this.mYourIp, s2, s3, byteBufferAllocate, (byte) 1, false);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override // android.net.dhcp.DhcpPacket
    public void doNextOp(DhcpStateMachine dhcpStateMachine) {
        dhcpStateMachine.onDeclineReceived(this.mClientMac, this.mRequestedIp);
    }

    @Override // android.net.dhcp.DhcpPacket
    public void finishPacket(ByteBuffer byteBuffer) {
    }

    @Override // android.net.dhcp.DhcpPacket
    public String toString() {
        return super.toString() + " DECLINE";
    }
}
