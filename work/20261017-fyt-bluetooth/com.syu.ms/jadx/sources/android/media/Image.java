package android.media;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class Image implements AutoCloseable {

    public static abstract class Plane {
        public abstract ByteBuffer getBuffer();

        public abstract int getPixelStride();

        public abstract int getRowStride();
    }

    @Override // java.lang.AutoCloseable
    public abstract void close();

    public abstract int getFormat();

    public abstract int getHeight();

    public abstract Plane[] getPlanes();

    public abstract long getTimestamp();

    public abstract int getWidth();
}
