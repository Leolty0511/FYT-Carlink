package com.google.android.projection.protocol;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Transport implements ConnectionConfigurationCallbacks {

    public enum StopReason {
        CONNECTION_TERMINATED,
        MD_BYEBYE,
        HU_BYEBYE,
        USER_SWITCH,
        PING_TIMEOUT,
        PING_RTT_TOO_HIGH,
        CONNECTION_DISCONNECTED,
        CONNECTION_ERROR
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public void onApplyTcpReadTimout(int i2) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public void onApplyTcpReceiveBufferSize(int i2) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public void onApplyTcpSendBufferSize(int i2) {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public int onRetrieveTcpReadTimeout() {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public int onRetrieveTcpReceiveBufferSize() {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.google.android.projection.protocol.ConnectionConfigurationCallbacks
    public int onRetrieveTcpSendBufferSize() {
        throw new UnsupportedOperationException("Not implemented");
    }

    public abstract int read(byte[] bArr, int i2, int i3);

    public abstract void stopTransport(StopReason stopReason);

    public abstract void write(byte[] bArr, int i2, int i3);
}
