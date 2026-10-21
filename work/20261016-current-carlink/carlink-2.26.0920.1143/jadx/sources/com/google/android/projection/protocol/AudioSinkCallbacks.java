package com.google.android.projection.protocol;

/* JADX INFO: loaded from: classes3.dex */
interface AudioSinkCallbacks extends NativeCallback {
    int codecConfigCallback(byte[] bArr);

    void dataAvailableCallback(int i2, long j2, byte[] bArr);

    void playbackStartCallback(int i2);

    void playbackStopCallback(int i2);

    int setupCallback(int i2);
}
