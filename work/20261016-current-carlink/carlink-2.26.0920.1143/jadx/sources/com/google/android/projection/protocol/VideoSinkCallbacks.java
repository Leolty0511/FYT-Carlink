package com.google.android.projection.protocol;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
interface VideoSinkCallbacks extends NativeCallback {
    void actionTakenNotificationCallback(int i2);

    int codecConfigCallback(byte[] bArr);

    void dataAvailableCallback(int i2, long j2, ByteBuffer byteBuffer);

    void playbackStartCallback(int i2);

    void playbackStopCallback(int i2);

    int setupCallback(int i2);

    void sourceVideoConfigCallback(int i2);

    void updateUiConfigReplyCallback(byte[] bArr);

    void videoFocusCallback(int i2, int i3);
}
