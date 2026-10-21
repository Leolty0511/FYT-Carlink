package android.net.dhcp;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class DhcpNakPacket extends DhcpPacket {
    public DhcpNakPacket(int i2, InetAddress inetAddress, InetAddress inetAddress2, InetAddress inetAddress3, InetAddress inetAddress4, byte[] bArr) {
        super(i2, Inet4Address.ANY, Inet4Address.ANY, inetAddress3, inetAddress4, bArr, false);
    }

    @Override // android.net.dhcp.DhcpPacket
    public ByteBuffer buildPacket(int i2, short s2, short s3) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(DhcpPacket.MAX_LENGTH);
        fillInPacket(i2, this.mClientIp, this.mYourIp, s2, s3, byteBufferAllocate, (byte) 2, this.mBroadcast);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override // android.net.dhcp.DhcpPacket
    public void doNextOp(DhcpStateMachine dhcpStateMachine) {
        dhcpStateMachine.onNakReceived();
    }

    @Override // android.net.dhcp.DhcpPacket
    public void finishPacket(ByteBuffer byteBuffer) {
        addTlv(byteBuffer, DhcpPacket.DHCP_MESSAGE_TYPE, (byte) 6);
        addTlv(byteBuffer, DhcpPacket.DHCP_SERVER_IDENTIFIER, this.mServerIdentifier);
        addTlv(byteBuffer, DhcpPacket.DHCP_MESSAGE, this.mMessage);
        addTlvEnd(byteBuffer);
    }

    @Override // android.net.dhcp.DhcpPacket
    public String toString() {
        String string = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(" NAK, reason ");
        String str = this.mMessage;
        if (str == null) {
            str = "(none)";
        }
        sb.append(str);
        return sb.toString();
    }
}
