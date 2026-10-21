package android.net.dhcp;

import android.util.Log;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class DhcpRequestPacket extends DhcpPacket {
    public DhcpRequestPacket(int i2, InetAddress inetAddress, byte[] bArr, boolean z2) {
        super(i2, inetAddress, Inet4Address.ANY, Inet4Address.ANY, Inet4Address.ANY, bArr, z2);
    }

    @Override // android.net.dhcp.DhcpPacket
    public ByteBuffer buildPacket(int i2, short s2, short s3) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(DhcpPacket.MAX_LENGTH);
        fillInPacket(i2, Inet4Address.ALL, Inet4Address.ANY, s2, s3, byteBufferAllocate, (byte) 1, this.mBroadcast);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    @Override // android.net.dhcp.DhcpPacket
    public void doNextOp(DhcpStateMachine dhcpStateMachine) {
        InetAddress inetAddress = this.mRequestedIp;
        if (inetAddress == null) {
            inetAddress = this.mClientIp;
        }
        Log.v(DhcpPacket.TAG, "requested IP is " + this.mRequestedIp + " and client IP is " + this.mClientIp);
        dhcpStateMachine.onRequestReceived(this.mBroadcast, this.mTransId, this.mClientMac, inetAddress, this.mRequestedParams, this.mHostName);
    }

    @Override // android.net.dhcp.DhcpPacket
    public void finishPacket(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[7];
        bArr[0] = 1;
        System.arraycopy(this.mClientMac, 0, bArr, 1, 6);
        addTlv(byteBuffer, DhcpPacket.DHCP_MESSAGE_TYPE, (byte) 3);
        addTlv(byteBuffer, DhcpPacket.DHCP_PARAMETER_LIST, this.mRequestedParams);
        addTlv(byteBuffer, DhcpPacket.DHCP_REQUESTED_IP, this.mRequestedIp);
        addTlv(byteBuffer, DhcpPacket.DHCP_SERVER_IDENTIFIER, this.mServerIdentifier);
        addTlv(byteBuffer, DhcpPacket.DHCP_CLIENT_IDENTIFIER, bArr);
        addTlvEnd(byteBuffer);
    }

    @Override // android.net.dhcp.DhcpPacket
    public String toString() {
        String string = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(" REQUEST, desired IP ");
        sb.append(this.mRequestedIp);
        sb.append(" from host '");
        sb.append(this.mHostName);
        sb.append("', param list length ");
        byte[] bArr = this.mRequestedParams;
        sb.append(bArr == null ? 0 : bArr.length);
        return sb.toString();
    }
}
