package com.google.android.projection.transport.net;

import android.util.Log;
import com.google.android.projection.protocol.Transport;
import com.google.android.projection.transport.StreamTransport;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;

/* JADX INFO: loaded from: classes3.dex */
public class TcpTransport extends StreamTransport {
    private static final String TAG = "AHU.TCP_CONNECTION";
    private final Socket mSocket;

    public TcpTransport(Socket socket) {
        super(socket.getInputStream(), socket.getOutputStream());
        this.mSocket = socket;
    }

    @Override // com.google.android.projection.protocol.Transport, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public void onApplyTcpReadTimout(int i2) throws SocketException {
        this.mSocket.setSoTimeout(i2);
    }

    @Override // com.google.android.projection.protocol.Transport, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public void onApplyTcpReceiveBufferSize(int i2) throws SocketException {
        this.mSocket.setReceiveBufferSize(i2);
    }

    @Override // com.google.android.projection.protocol.Transport, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public void onApplyTcpSendBufferSize(int i2) throws SocketException {
        this.mSocket.setSendBufferSize(i2);
    }

    @Override // com.google.android.projection.protocol.Transport, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public int onRetrieveTcpReadTimeout() {
        return this.mSocket.getSoTimeout();
    }

    @Override // com.google.android.projection.protocol.Transport, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public int onRetrieveTcpReceiveBufferSize() {
        return this.mSocket.getReceiveBufferSize();
    }

    @Override // com.google.android.projection.protocol.Transport, com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public int onRetrieveTcpSendBufferSize() {
        return this.mSocket.getSendBufferSize();
    }

    @Override // com.google.android.projection.transport.StreamTransport, com.google.android.projection.protocol.Transport
    public void stopTransport(Transport.StopReason stopReason) {
        super.stopTransport(stopReason);
        try {
            this.mSocket.close();
        } catch (IOException e2) {
            Log.d("AHU.TCP_CONNECTION", "Can't close socket: " + e2);
        }
    }
}
