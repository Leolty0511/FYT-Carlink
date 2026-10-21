package android.graphics;

import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;

/* JADX INFO: loaded from: classes.dex */
public class Path {
    static final FillType[] sFillTypeArray = {FillType.WINDING, FillType.EVEN_ODD, FillType.INVERSE_WINDING, FillType.INVERSE_EVEN_ODD};
    public boolean isSimplePath;
    private Direction mLastDirection;
    public long mNativePath;
    public Region rects;

    public enum Direction {
        CW(0),
        CCW(1);

        final int nativeInt;

        Direction(int i2) {
            this.nativeInt = i2;
        }
    }

    public enum FillType {
        WINDING(0),
        EVEN_ODD(1),
        INVERSE_WINDING(2),
        INVERSE_EVEN_ODD(3);

        final int nativeInt;

        FillType(int i2) {
            this.nativeInt = i2;
        }
    }

    public enum Op {
        DIFFERENCE,
        INTERSECT,
        UNION,
        XOR,
        REVERSE_DIFFERENCE
    }

    public Path() {
        this.isSimplePath = true;
        this.mLastDirection = null;
        this.mNativePath = nInit();
    }

    private void detectSimplePath(float f2, float f3, float f4, float f5, Direction direction) {
        if (this.mLastDirection == null) {
            this.mLastDirection = direction;
        }
        if (this.mLastDirection != direction) {
            this.isSimplePath = false;
            return;
        }
        if (this.rects == null) {
            this.rects = new Region();
        }
        this.rects.op((int) f2, (int) f3, (int) f4, (int) f5, Region.Op.UNION);
    }

    private static native void nAddArc(long j2, float f2, float f3, float f4, float f5, float f6, float f7);

    private static native void nAddCircle(long j2, float f2, float f3, float f4, int i2);

    private static native void nAddOval(long j2, float f2, float f3, float f4, float f5, int i2);

    private static native void nAddPath(long j2, long j3);

    private static native void nAddPath(long j2, long j3, float f2, float f3);

    private static native void nAddPath(long j2, long j3, long j4);

    private static native void nAddRect(long j2, float f2, float f3, float f4, float f5, int i2);

    private static native void nAddRoundRect(long j2, float f2, float f3, float f4, float f5, float f6, float f7, int i2);

    private static native void nAddRoundRect(long j2, float f2, float f3, float f4, float f5, float[] fArr, int i2);

    private static native float[] nApproximate(long j2, float f2);

    private static native void nArcTo(long j2, float f2, float f3, float f4, float f5, float f6, float f7, boolean z2);

    private static native void nClose(long j2);

    private static native void nComputeBounds(long j2, RectF rectF);

    private static native void nCubicTo(long j2, float f2, float f3, float f4, float f5, float f6, float f7);

    private static native void nFinalize(long j2);

    @CriticalNative
    private static native int nGetFillType(long j2);

    private static native void nIncReserve(long j2, int i2);

    private static native long nInit();

    private static native long nInit(long j2);

    @CriticalNative
    private static native boolean nIsConvex(long j2);

    @CriticalNative
    private static native boolean nIsEmpty(long j2);

    @FastNative
    private static native boolean nIsRect(long j2, RectF rectF);

    private static native void nLineTo(long j2, float f2, float f3);

    private static native void nMoveTo(long j2, float f2, float f3);

    private static native void nOffset(long j2, float f2, float f3);

    private static native boolean nOp(long j2, long j3, int i2, long j4);

    private static native void nQuadTo(long j2, float f2, float f3, float f4, float f5);

    private static native void nRCubicTo(long j2, float f2, float f3, float f4, float f5, float f6, float f7);

    private static native void nRLineTo(long j2, float f2, float f3);

    private static native void nRMoveTo(long j2, float f2, float f3);

    private static native void nRQuadTo(long j2, float f2, float f3, float f4, float f5);

    @CriticalNative
    private static native void nReset(long j2);

    @CriticalNative
    private static native void nRewind(long j2);

    private static native void nSet(long j2, long j3);

    @CriticalNative
    private static native void nSetFillType(long j2, int i2);

    private static native void nSetLastPoint(long j2, float f2, float f3);

    private static native void nTransform(long j2, long j3);

    private static native void nTransform(long j2, long j3, long j4);

    public void addArc(RectF rectF, float f2, float f3) {
        addArc(rectF.left, rectF.top, rectF.right, rectF.bottom, f2, f3);
    }

    public void addCircle(float f2, float f3, float f4, Direction direction) {
        this.isSimplePath = false;
        nAddCircle(this.mNativePath, f2, f3, f4, direction.nativeInt);
    }

    public void addOval(RectF rectF, Direction direction) {
        addOval(rectF.left, rectF.top, rectF.right, rectF.bottom, direction);
    }

    public void addPath(Path path, float f2, float f3) {
        this.isSimplePath = false;
        nAddPath(this.mNativePath, path.mNativePath, f2, f3);
    }

    public void addRect(RectF rectF, Direction direction) {
        addRect(rectF.left, rectF.top, rectF.right, rectF.bottom, direction);
    }

    public void addRoundRect(RectF rectF, float f2, float f3, Direction direction) {
        addRoundRect(rectF.left, rectF.top, rectF.right, rectF.bottom, f2, f3, direction);
    }

    public float[] approximate(float f2) {
        if (f2 >= 0.0f) {
            return nApproximate(this.mNativePath, f2);
        }
        throw new IllegalArgumentException("AcceptableError must be greater than or equal to 0");
    }

    public void arcTo(RectF rectF, float f2, float f3, boolean z2) {
        arcTo(rectF.left, rectF.top, rectF.right, rectF.bottom, f2, f3, z2);
    }

    public void close() {
        this.isSimplePath = false;
        nClose(this.mNativePath);
    }

    public void computeBounds(RectF rectF, boolean z2) {
        nComputeBounds(this.mNativePath, rectF);
    }

    public void cubicTo(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.isSimplePath = false;
        nCubicTo(this.mNativePath, f2, f3, f4, f5, f6, f7);
    }

    public void finalize() throws Throwable {
        try {
            nFinalize(this.mNativePath);
            this.mNativePath = 0L;
        } finally {
            super.finalize();
        }
    }

    public FillType getFillType() {
        return sFillTypeArray[nGetFillType(this.mNativePath)];
    }

    public void incReserve(int i2) {
        nIncReserve(this.mNativePath, i2);
    }

    public boolean isConvex() {
        return nIsConvex(this.mNativePath);
    }

    public boolean isEmpty() {
        return nIsEmpty(this.mNativePath);
    }

    public boolean isInverseFillType() {
        return (nGetFillType(this.mNativePath) & FillType.INVERSE_WINDING.nativeInt) != 0;
    }

    public boolean isRect(RectF rectF) {
        return nIsRect(this.mNativePath, rectF);
    }

    public void lineTo(float f2, float f3) {
        this.isSimplePath = false;
        nLineTo(this.mNativePath, f2, f3);
    }

    public void moveTo(float f2, float f3) {
        nMoveTo(this.mNativePath, f2, f3);
    }

    public final long mutateNI() {
        this.isSimplePath = false;
        return this.mNativePath;
    }

    public void offset(float f2, float f3, Path path) {
        if (path != null) {
            path.set(this);
        } else {
            path = this;
        }
        path.offset(f2, f3);
    }

    public boolean op(Path path, Op op) {
        return op(this, path, op);
    }

    public void quadTo(float f2, float f3, float f4, float f5) {
        this.isSimplePath = false;
        nQuadTo(this.mNativePath, f2, f3, f4, f5);
    }

    public void rCubicTo(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.isSimplePath = false;
        nRCubicTo(this.mNativePath, f2, f3, f4, f5, f6, f7);
    }

    public void rLineTo(float f2, float f3) {
        this.isSimplePath = false;
        nRLineTo(this.mNativePath, f2, f3);
    }

    public void rMoveTo(float f2, float f3) {
        nRMoveTo(this.mNativePath, f2, f3);
    }

    public void rQuadTo(float f2, float f3, float f4, float f5) {
        this.isSimplePath = false;
        nRQuadTo(this.mNativePath, f2, f3, f4, f5);
    }

    public final long readOnlyNI() {
        return this.mNativePath;
    }

    public void reset() {
        this.isSimplePath = true;
        this.mLastDirection = null;
        Region region = this.rects;
        if (region != null) {
            region.setEmpty();
        }
        FillType fillType = getFillType();
        nReset(this.mNativePath);
        setFillType(fillType);
    }

    public void rewind() {
        this.isSimplePath = true;
        this.mLastDirection = null;
        Region region = this.rects;
        if (region != null) {
            region.setEmpty();
        }
        nRewind(this.mNativePath);
    }

    public void set(Path path) {
        Region region;
        if (this == path) {
            return;
        }
        this.isSimplePath = path.isSimplePath;
        nSet(this.mNativePath, path.mNativePath);
        if (this.isSimplePath) {
            Region region2 = this.rects;
            if (region2 != null && (region = path.rects) != null) {
                region2.set(region);
                return;
            }
            if (region2 != null && path.rects == null) {
                region2.setEmpty();
            } else if (path.rects != null) {
                this.rects = new Region(path.rects);
            }
        }
    }

    public void setFillType(FillType fillType) {
        nSetFillType(this.mNativePath, fillType.nativeInt);
    }

    public void setLastPoint(float f2, float f3) {
        this.isSimplePath = false;
        nSetLastPoint(this.mNativePath, f2, f3);
    }

    public void toggleInverseFillType() {
        nSetFillType(this.mNativePath, nGetFillType(this.mNativePath) ^ FillType.INVERSE_WINDING.nativeInt);
    }

    public void transform(Matrix matrix, Path path) {
        long j2;
        if (path != null) {
            path.isSimplePath = false;
            j2 = path.mNativePath;
        } else {
            j2 = 0;
        }
        nTransform(this.mNativePath, matrix.native_instance, j2);
    }

    public void addArc(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.isSimplePath = false;
        nAddArc(this.mNativePath, f2, f3, f4, f5, f6, f7);
    }

    public void addOval(float f2, float f3, float f4, float f5, Direction direction) {
        this.isSimplePath = false;
        nAddOval(this.mNativePath, f2, f3, f4, f5, direction.nativeInt);
    }

    public void addRect(float f2, float f3, float f4, float f5, Direction direction) {
        detectSimplePath(f2, f3, f4, f5, direction);
        nAddRect(this.mNativePath, f2, f3, f4, f5, direction.nativeInt);
    }

    public void addRoundRect(float f2, float f3, float f4, float f5, float f6, float f7, Direction direction) {
        this.isSimplePath = false;
        nAddRoundRect(this.mNativePath, f2, f3, f4, f5, f6, f7, direction.nativeInt);
    }

    public void arcTo(RectF rectF, float f2, float f3) {
        arcTo(rectF.left, rectF.top, rectF.right, rectF.bottom, f2, f3, false);
    }

    public boolean op(Path path, Path path2, Op op) {
        if (!nOp(path.mNativePath, path2.mNativePath, op.ordinal(), this.mNativePath)) {
            return false;
        }
        this.isSimplePath = false;
        this.rects = null;
        return true;
    }

    public void addPath(Path path) {
        this.isSimplePath = false;
        nAddPath(this.mNativePath, path.mNativePath);
    }

    public void arcTo(float f2, float f3, float f4, float f5, float f6, float f7, boolean z2) {
        this.isSimplePath = false;
        nArcTo(this.mNativePath, f2, f3, f4, f5, f6, f7, z2);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    public void offset(float f2, float f3) {
        boolean z2 = this.isSimplePath;
        if (z2 && this.rects == null) {
            return;
        }
        if (z2) {
            double d2 = f2;
            if (d2 == Math.rint(d2)) {
                double d3 = f3;
                if (d3 == Math.rint(d3)) {
                    this.rects.translate((int) f2, (int) f3);
                } else {
                    this.isSimplePath = false;
                }
            } else {
                this.isSimplePath = false;
            }
        } else {
            this.isSimplePath = false;
        }
        nOffset(this.mNativePath, f2, f3);
    }

    public void addRoundRect(RectF rectF, float[] fArr, Direction direction) {
        if (rectF != null) {
            addRoundRect(rectF.left, rectF.top, rectF.right, rectF.bottom, fArr, direction);
            return;
        }
        throw new NullPointerException("need rect parameter");
    }

    public void transform(Matrix matrix) {
        this.isSimplePath = false;
        nTransform(this.mNativePath, matrix.native_instance);
    }

    public Path(Path path) {
        long j2;
        this.isSimplePath = true;
        this.mLastDirection = null;
        if (path != null) {
            j2 = path.mNativePath;
            this.isSimplePath = path.isSimplePath;
            if (path.rects != null) {
                this.rects = new Region(path.rects);
            }
        } else {
            j2 = 0;
        }
        this.mNativePath = nInit(j2);
    }

    public void addPath(Path path, Matrix matrix) {
        if (!path.isSimplePath) {
            this.isSimplePath = false;
        }
        nAddPath(this.mNativePath, path.mNativePath, matrix.native_instance);
    }

    public void addRoundRect(float f2, float f3, float f4, float f5, float[] fArr, Direction direction) {
        if (fArr.length >= 8) {
            this.isSimplePath = false;
            nAddRoundRect(this.mNativePath, f2, f3, f4, f5, fArr, direction.nativeInt);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("radii[] needs 8 values");
    }
}
