package android.media;

import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaDataSource implements Closeable {
    public abstract long getSize();

    public abstract int readAt(long j2, byte[] bArr, int i2, int i3);
}
