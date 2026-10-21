package android.filterfw.core;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class Frame {
    public static final int NO_BINDING = 0;
    public static final long TIMESTAMP_NOT_SET = -2;
    public static final long TIMESTAMP_UNKNOWN = -1;
    private long mBindingId;
    private int mBindingType;
    private FrameFormat mFormat;
    private FrameManager mFrameManager;
    private boolean mReadOnly;
    private int mRefCount;
    private boolean mReusable;
    private long mTimestamp;

    public Frame(FrameFormat frameFormat, FrameManager frameManager) {
        this.mReadOnly = false;
        this.mReusable = false;
        this.mRefCount = 1;
        this.mBindingType = 0;
        this.mBindingId = 0L;
        this.mTimestamp = -2L;
        this.mFormat = frameFormat.mutableCopy();
        this.mFrameManager = frameManager;
    }

    public static Bitmap convertBitmapToRGBA(Bitmap bitmap) {
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (config == config2) {
            return bitmap;
        }
        Bitmap bitmapCopy = bitmap.copy(config2, false);
        if (bitmapCopy == null) {
            throw new RuntimeException("Error converting bitmap to RGBA!");
        }
        if (bitmapCopy.getRowBytes() == bitmapCopy.getWidth() * 4) {
            return bitmapCopy;
        }
        throw new RuntimeException("Unsupported row byte count in bitmap!");
    }

    public void assertFrameMutable() {
        if (isReadOnly()) {
            throw new RuntimeException("Attempting to modify read-only frame!");
        }
    }

    public final int decRefCount() {
        int i2 = this.mRefCount - 1;
        this.mRefCount = i2;
        return i2;
    }

    public long getBindingId() {
        return this.mBindingId;
    }

    public int getBindingType() {
        return this.mBindingType;
    }

    public abstract Bitmap getBitmap();

    public int getCapacity() {
        return getFormat().getSize();
    }

    public abstract ByteBuffer getData();

    public abstract float[] getFloats();

    public FrameFormat getFormat() {
        return this.mFormat;
    }

    public FrameManager getFrameManager() {
        return this.mFrameManager;
    }

    public abstract int[] getInts();

    public abstract Object getObjectValue();

    public int getRefCount() {
        return this.mRefCount;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public abstract boolean hasNativeAllocation();

    public final int incRefCount() {
        int i2 = this.mRefCount + 1;
        this.mRefCount = i2;
        return i2;
    }

    public boolean isReadOnly() {
        return this.mReadOnly;
    }

    public final boolean isReusable() {
        return this.mReusable;
    }

    public final void markReadOnly() {
        this.mReadOnly = true;
    }

    public void onFrameFetch() {
    }

    public void onFrameStore() {
    }

    public Frame release() {
        FrameManager frameManager = this.mFrameManager;
        return frameManager != null ? frameManager.releaseFrame(this) : this;
    }

    public abstract void releaseNativeAllocation();

    public boolean requestResize(int[] iArr) {
        return false;
    }

    public void reset(FrameFormat frameFormat) {
        this.mFormat = frameFormat.mutableCopy();
        this.mReadOnly = false;
        this.mRefCount = 1;
    }

    public Frame retain() {
        FrameManager frameManager = this.mFrameManager;
        return frameManager != null ? frameManager.retainFrame(this) : this;
    }

    public abstract void setBitmap(Bitmap bitmap);

    public void setData(ByteBuffer byteBuffer) {
        setData(byteBuffer, 0, byteBuffer.limit());
    }

    public abstract void setData(ByteBuffer byteBuffer, int i2, int i3);

    public void setDataFromFrame(Frame frame) {
        setData(frame.getData());
    }

    public abstract void setFloats(float[] fArr);

    public void setFormat(FrameFormat frameFormat) {
        this.mFormat = frameFormat.mutableCopy();
    }

    public void setGenericObjectValue(Object obj) {
        throw new RuntimeException("Cannot set object value of unsupported type: " + obj.getClass());
    }

    public abstract void setInts(int[] iArr);

    public void setObjectValue(Object obj) {
        assertFrameMutable();
        if (obj instanceof int[]) {
            setInts((int[]) obj);
            return;
        }
        if (obj instanceof float[]) {
            setFloats((float[]) obj);
            return;
        }
        if (obj instanceof ByteBuffer) {
            setData((ByteBuffer) obj);
        } else if (obj instanceof Bitmap) {
            setBitmap((Bitmap) obj);
        } else {
            setGenericObjectValue(obj);
        }
    }

    public void setReusable(boolean z2) {
        this.mReusable = z2;
    }

    public void setTimestamp(long j2) {
        this.mTimestamp = j2;
    }

    public void setData(byte[] bArr, int i2, int i3) {
        setData(ByteBuffer.wrap(bArr, i2, i3));
    }

    public Frame(FrameFormat frameFormat, FrameManager frameManager, int i2, long j2) {
        this.mReadOnly = false;
        this.mReusable = false;
        this.mRefCount = 1;
        this.mBindingType = 0;
        this.mBindingId = 0L;
        this.mTimestamp = -2L;
        this.mFormat = frameFormat.mutableCopy();
        this.mFrameManager = frameManager;
        this.mBindingType = i2;
        this.mBindingId = j2;
    }
}
