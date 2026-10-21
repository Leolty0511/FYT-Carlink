package com.google.android.projection.protocol;

/* JADX INFO: loaded from: classes3.dex */
interface NavigationStatusCallbacks extends NativeCallback {
    void navigationCurrentPositionCallback(byte[] bArr);

    void navigationNextTurnCallback(String str, int i2, int i3, byte[] bArr, int i4, int i5);

    void navigationNextTurnDistanceCallback(int i2, int i3, int i4, int i5);

    void navigationStateCallback(byte[] bArr);

    void navigationStatusCallback(int i2);
}
