package android.graphics;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RegionIterator {
    private final int mNativeIter;

    public RegionIterator(Region region) {
        this.mNativeIter = nativeConstructor(region.ni());
    }

    private static native int nativeConstructor(int i2);

    private static native void nativeDestructor(int i2);

    private static native boolean nativeNext(int i2, Rect rect);

    public void finalize() {
        nativeDestructor(this.mNativeIter);
    }

    public final boolean next(Rect rect) {
        Objects.requireNonNull(rect, "The Rect must be provided");
        return nativeNext(this.mNativeIter, rect);
    }
}
