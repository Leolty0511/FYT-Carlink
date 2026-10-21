package android.filterfw.core;

/* JADX INFO: loaded from: classes.dex */
public class NativeBuffer {
    private Frame mAttachedFrame;
    private long mDataPointer;
    private boolean mOwnsData;
    private int mRefCount;
    private int mSize;

    static {
        System.loadLibrary("filterfw");
    }

    public NativeBuffer() {
        this.mDataPointer = 0L;
        this.mSize = 0;
        this.mOwnsData = false;
        this.mRefCount = 1;
    }

    private native boolean allocate(int i2);

    private native boolean deallocate(boolean z2);

    private native boolean nativeCopyTo(NativeBuffer nativeBuffer);

    public void assertReadable() {
        Frame frame;
        if (this.mDataPointer == 0 || this.mSize == 0 || !((frame = this.mAttachedFrame) == null || frame.hasNativeAllocation())) {
            throw new NullPointerException("Attempting to read from null data frame!");
        }
    }

    public void assertWritable() {
        if (isReadOnly()) {
            throw new RuntimeException("Attempting to modify read-only native (structured) data!");
        }
    }

    public void attachToFrame(Frame frame) {
        this.mAttachedFrame = frame;
    }

    public int count() {
        if (this.mDataPointer != 0) {
            return this.mSize / getElementSize();
        }
        return 0;
    }

    public int getElementSize() {
        return 1;
    }

    public boolean isReadOnly() {
        Frame frame = this.mAttachedFrame;
        if (frame != null) {
            return frame.isReadOnly();
        }
        return false;
    }

    public NativeBuffer mutableCopy() {
        try {
            NativeBuffer nativeBuffer = (NativeBuffer) getClass().newInstance();
            if (this.mSize <= 0 || nativeCopyTo(nativeBuffer)) {
                return nativeBuffer;
            }
            throw new RuntimeException("Failed to copy NativeBuffer to mutable instance!");
        } catch (Exception unused) {
            throw new RuntimeException("Unable to allocate a copy of " + getClass() + "! Make sure the class has a default constructor!");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000d  */
    public NativeBuffer release() {
        Frame frame = this.mAttachedFrame;
        boolean z2 = true;
        boolean z3 = false;
        if (frame != null) {
            if (frame.release() != null) {
                z2 = false;
            }
            z3 = z2;
        } else if (this.mOwnsData) {
            int i2 = this.mRefCount - 1;
            this.mRefCount = i2;
            if (i2 != 0) {
                z2 = false;
            }
            z3 = z2;
        }
        if (!z3) {
            return this;
        }
        deallocate(this.mOwnsData);
        return null;
    }

    public NativeBuffer retain() {
        Frame frame = this.mAttachedFrame;
        if (frame != null) {
            frame.retain();
        } else if (this.mOwnsData) {
            this.mRefCount++;
        }
        return this;
    }

    public int size() {
        return this.mSize;
    }

    public NativeBuffer(int i2) {
        this.mDataPointer = 0L;
        this.mSize = 0;
        this.mOwnsData = false;
        this.mRefCount = 1;
        allocate(i2 * getElementSize());
        this.mOwnsData = true;
    }
}
