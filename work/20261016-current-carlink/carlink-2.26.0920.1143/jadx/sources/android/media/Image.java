package android.media;

import android.graphics.Rect;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class Image implements AutoCloseable {
    private Rect mCropRect;
    protected boolean mIsImageValid = false;

    public static abstract class Plane {
        public abstract ByteBuffer getBuffer();

        public abstract int getPixelStride();

        public abstract int getRowStride();
    }

    @Override // java.lang.AutoCloseable
    public abstract void close();

    public Rect getCropRect() {
        throwISEIfImageIsInvalid();
        return this.mCropRect == null ? new Rect(0, 0, getWidth(), getHeight()) : new Rect(this.mCropRect);
    }

    public abstract int getFormat();

    public abstract int getHeight();

    public long getNativeContext() {
        throwISEIfImageIsInvalid();
        return 0L;
    }

    public Object getOwner() {
        throwISEIfImageIsInvalid();
        return null;
    }

    public abstract Plane[] getPlanes();

    public abstract long getTimestamp();

    public abstract int getWidth();

    public boolean isAttachable() {
        throwISEIfImageIsInvalid();
        return false;
    }

    public void setCropRect(Rect rect) {
        throwISEIfImageIsInvalid();
        if (rect != null) {
            Rect rect2 = new Rect(rect);
            if (!rect2.intersect(0, 0, getWidth(), getHeight())) {
                rect2.setEmpty();
            }
            rect = rect2;
        }
        this.mCropRect = rect;
    }

    public void setTimestamp(long j2) {
        throwISEIfImageIsInvalid();
    }

    public void throwISEIfImageIsInvalid() {
        if (!this.mIsImageValid) {
            throw new IllegalStateException("Image is already closed");
        }
    }
}
