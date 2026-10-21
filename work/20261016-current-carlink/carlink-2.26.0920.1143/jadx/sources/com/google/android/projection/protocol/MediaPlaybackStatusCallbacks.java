package com.google.android.projection.protocol;

/* JADX INFO: loaded from: classes3.dex */
interface MediaPlaybackStatusCallbacks extends NativeCallback {
    void mediaPlaybackMetadataCallback(String str, String str2, String str3, byte[] bArr, String str4, int i2, int i3);

    void mediaPlaybackStatusCallback(int i2, String str, int i3, boolean z2, boolean z3, boolean z4);
}
