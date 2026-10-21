package com.google.android.projection.protocol;

/* JADX INFO: loaded from: classes3.dex */
public interface ConnectionConfigurationCallbacks extends NativeCallback {
    void onApplyTcpReadTimout(int i2);

    void onApplyTcpReceiveBufferSize(int i2);

    void onApplyTcpSendBufferSize(int i2);

    int onRetrieveTcpReadTimeout();

    int onRetrieveTcpReceiveBufferSize();

    int onRetrieveTcpSendBufferSize();
}
