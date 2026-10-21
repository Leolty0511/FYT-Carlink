package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class RegionIterator {
    private long mNativeIter;

    public RegionIterator(Region region) {
        this.mNativeIter = nativeConstructor(region.ni());
    }

    private static native long nativeConstructor(long j2);

    private static native void nativeDestructor(long j2);

    private static native boolean nativeNext(long j2, Rect rect);

    public void finalize() {
        nativeDestructor(this.mNativeIter);
        this.mNativeIter = 0L;
    }

    public final boolean next(Rect rect) {
        if (rect != null) {
            return nativeNext(this.mNativeIter, rect);
        }
        throw new NullPointerException("The Rect must be provided");
    }
}
