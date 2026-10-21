package android.gesture;

import java.io.DataInputStream;

/* JADX INFO: loaded from: classes.dex */
public class GesturePoint {
    public final long timestamp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final float f62x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final float f63y;

    public GesturePoint(float f2, float f3, long j2) {
        this.f62x = f2;
        this.f63y = f3;
        this.timestamp = j2;
    }

    public static GesturePoint deserialize(DataInputStream dataInputStream) {
        return new GesturePoint(dataInputStream.readFloat(), dataInputStream.readFloat(), dataInputStream.readLong());
    }

    public Object clone() {
        return new GesturePoint(this.f62x, this.f63y, this.timestamp);
    }
}
