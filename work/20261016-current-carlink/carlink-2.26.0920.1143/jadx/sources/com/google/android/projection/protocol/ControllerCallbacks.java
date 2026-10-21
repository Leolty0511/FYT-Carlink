package com.google.android.projection.protocol;

/* JADX INFO: loaded from: classes3.dex */
interface ControllerCallbacks extends NativeCallback {
    void audioFocusRequestCallback(int i2);

    void batteryStatusNotificationCallback(int i2, int i3, boolean z2);

    void bugreportRequestCallback(long j2);

    void byeByeRequestCallback(int i2);

    void byeByeResponseCallback();

    @Deprecated
    void carConnectedDevicesRequestCallback();

    void highLatencyCallback(int[] iArr);

    void latencyBackToNormalCallback(int[] iArr);

    void navigationFocusCallback(int i2);

    void serviceDiscoveryRequestCallback(byte[] bArr, byte[] bArr2, byte[] bArr3, String str, String str2, String str3);

    void unrecoverableErrorCallback(int i2);

    @Deprecated
    void userSwitchRequestCallback(GalReceiver.ConnectedDevice connectedDevice);

    void voiceSessionNotificationCallback(int i2);
}
