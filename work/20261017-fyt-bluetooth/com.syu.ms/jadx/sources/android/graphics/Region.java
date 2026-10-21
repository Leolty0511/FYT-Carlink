package android.graphics;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Pools;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Region implements Parcelable {
    private static final int MAX_POOL_SIZE = 10;
    public final int mNativeRegion;
    private static final Pools.SynchronizedPool<Region> sPool = new Pools.SynchronizedPool<>(10);
    public static final Parcelable.Creator<Region> CREATOR = new Parcelable.Creator<Region>() { // from class: android.graphics.Region.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Region createFromParcel(Parcel parcel) {
            int iNativeCreateFromParcel = Region.nativeCreateFromParcel(parcel);
            if (iNativeCreateFromParcel != 0) {
                return new Region(iNativeCreateFromParcel);
            }
            throw new RuntimeException();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Region[] newArray(int i2) {
            return new Region[i2];
        }
    };

    public enum Op {
        DIFFERENCE(0),
        INTERSECT(1),
        UNION(2),
        XOR(3),
        REVERSE_DIFFERENCE(4),
        REPLACE(5);

        public final int nativeInt;

        Op(int i2) {
            this.nativeInt = i2;
        }
    }

    public Region() {
        this(nativeConstructor());
    }

    private static native int nativeConstructor();

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nativeCreateFromParcel(Parcel parcel);

    private static native void nativeDestructor(int i2);

    private static native boolean nativeEquals(int i2, int i3);

    private static native boolean nativeGetBoundaryPath(int i2, int i3);

    private static native boolean nativeGetBounds(int i2, Rect rect);

    private static native boolean nativeOp(int i2, int i3, int i4, int i5);

    private static native boolean nativeOp(int i2, int i3, int i4, int i5, int i6, int i7);

    private static native boolean nativeOp(int i2, Rect rect, int i3, int i4);

    private static native boolean nativeSetPath(int i2, int i3, int i4);

    private static native boolean nativeSetRect(int i2, int i3, int i4, int i5, int i6);

    private static native void nativeSetRegion(int i2, int i3);

    private static native String nativeToString(int i2);

    private static native boolean nativeWriteToParcel(int i2, Parcel parcel);

    public static Region obtain() {
        Region regionAcquire = sPool.acquire();
        return regionAcquire != null ? regionAcquire : new Region();
    }

    public native boolean contains(int i2, int i3);

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Region)) {
            return false;
        }
        return nativeEquals(this.mNativeRegion, ((Region) obj).mNativeRegion);
    }

    public void finalize() throws Throwable {
        try {
            nativeDestructor(this.mNativeRegion);
        } finally {
            super.finalize();
        }
    }

    public Path getBoundaryPath() {
        Path path = new Path();
        nativeGetBoundaryPath(this.mNativeRegion, path.ni());
        return path;
    }

    public Rect getBounds() {
        Rect rect = new Rect();
        nativeGetBounds(this.mNativeRegion, rect);
        return rect;
    }

    public native boolean isComplex();

    public native boolean isEmpty();

    public native boolean isRect();

    public final int ni() {
        return this.mNativeRegion;
    }

    public boolean op(Rect rect, Op op) {
        return nativeOp(this.mNativeRegion, rect.left, rect.top, rect.right, rect.bottom, op.nativeInt);
    }

    public native boolean quickContains(int i2, int i3, int i4, int i5);

    public boolean quickContains(Rect rect) {
        return quickContains(rect.left, rect.top, rect.right, rect.bottom);
    }

    public native boolean quickReject(int i2, int i3, int i4, int i5);

    public boolean quickReject(Rect rect) {
        return quickReject(rect.left, rect.top, rect.right, rect.bottom);
    }

    public native boolean quickReject(Region region);

    public void recycle() {
        setEmpty();
        sPool.release(this);
    }

    public void scale(float f2) {
        scale(f2, null);
    }

    public native void scale(float f2, Region region);

    public boolean set(Region region) {
        nativeSetRegion(this.mNativeRegion, region.mNativeRegion);
        return true;
    }

    public void setEmpty() {
        nativeSetRect(this.mNativeRegion, 0, 0, 0, 0);
    }

    public boolean setPath(Path path, Region region) {
        return nativeSetPath(this.mNativeRegion, path.ni(), region.mNativeRegion);
    }

    public String toString() {
        return nativeToString(this.mNativeRegion);
    }

    public void translate(int i2, int i3) {
        translate(i2, i3, null);
    }

    public native void translate(int i2, int i3, Region region);

    public final boolean union(Rect rect) {
        return op(rect, Op.UNION);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (!nativeWriteToParcel(this.mNativeRegion, parcel)) {
            throw new RuntimeException();
        }
    }

    public Region(Region region) {
        this(nativeConstructor());
        nativeSetRegion(this.mNativeRegion, region.mNativeRegion);
    }

    public boolean op(int i2, int i3, int i4, int i5, Op op) {
        return nativeOp(this.mNativeRegion, i2, i3, i4, i5, op.nativeInt);
    }

    public boolean set(Rect rect) {
        return nativeSetRect(this.mNativeRegion, rect.left, rect.top, rect.right, rect.bottom);
    }

    public static Region obtain(Region region) {
        Region regionObtain = obtain();
        regionObtain.set(region);
        return regionObtain;
    }

    public boolean getBoundaryPath(Path path) {
        return nativeGetBoundaryPath(this.mNativeRegion, path.ni());
    }

    public boolean getBounds(Rect rect) {
        Objects.requireNonNull(rect);
        return nativeGetBounds(this.mNativeRegion, rect);
    }

    public boolean op(Region region, Op op) {
        return op(this, region, op);
    }

    public boolean set(int i2, int i3, int i4, int i5) {
        return nativeSetRect(this.mNativeRegion, i2, i3, i4, i5);
    }

    public Region(Rect rect) {
        int iNativeConstructor = nativeConstructor();
        this.mNativeRegion = iNativeConstructor;
        nativeSetRect(iNativeConstructor, rect.left, rect.top, rect.right, rect.bottom);
    }

    public boolean op(Rect rect, Region region, Op op) {
        return nativeOp(this.mNativeRegion, rect, region.mNativeRegion, op.nativeInt);
    }

    public boolean op(Region region, Region region2, Op op) {
        return nativeOp(this.mNativeRegion, region.mNativeRegion, region2.mNativeRegion, op.nativeInt);
    }

    public Region(int i2, int i3, int i4, int i5) {
        int iNativeConstructor = nativeConstructor();
        this.mNativeRegion = iNativeConstructor;
        nativeSetRect(iNativeConstructor, i2, i3, i4, i5);
    }

    public Region(int i2) {
        if (i2 != 0) {
            this.mNativeRegion = i2;
            return;
        }
        throw new RuntimeException();
    }

    private Region(int i2, int i3) {
        this(i2);
    }
}
