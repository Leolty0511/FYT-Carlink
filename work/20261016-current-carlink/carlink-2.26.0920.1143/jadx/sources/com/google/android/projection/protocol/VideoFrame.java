package com.google.android.projection.protocol;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class VideoFrame {
    public ByteBuffer data;
    public int sessionId;
    public long timestamp;

    public VideoFrame(int i2, long j2, ByteBuffer byteBuffer) {
        this.data = byteBuffer;
        this.sessionId = i2;
        this.timestamp = j2;
    }
}
