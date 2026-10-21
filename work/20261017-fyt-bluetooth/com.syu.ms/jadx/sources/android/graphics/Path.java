package android.graphics;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Path {
    public static final FillType[] sFillTypeArray = {FillType.WINDING, FillType.EVEN_ODD, FillType.INVERSE_WINDING, FillType.INVERSE_EVEN_ODD};
    public boolean isSimplePath;
    private boolean mDetectSimplePaths;
    private Direction mLastDirection;
    public final int mNativePath;
    public Region rects;

    public enum Direction {
        CW(1),
        CCW(2);

        public final int nativeInt;

        Direction(int i2) {
            this.nativeInt = i2;
        }
    }

    public enum FillType {
        WINDING(0),
        EVEN_ODD(1),
        INVERSE_WINDING(2),
        INVERSE_EVEN_ODD(3);

        public final int nativeInt;

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
        this.mNativePath = init1();
        this.mDetectSimplePaths = android.view.HardwareRenderer.isAvailable();
    }

    private void detectSimplePath(float f2, float f3, float f4, float f5, Direction direction) {
        if (this.mDetectSimplePaths) {
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
    }

    private static native void finalizer(int i2);

    private static native int init1();

    private static native int init2(int i2);

    private static native void native_addArc(int i2, RectF rectF, float f2, float f3);

    private static native void native_addCircle(int i2, float f2, float f3, float f4, int i3);

    private static native void native_addOval(int i2, RectF rectF, int i3);

    private static native void native_addPath(int i2, int i3);

    private static native void native_addPath(int i2, int i3, float f2, float f3);

    private static native void native_addPath(int i2, int i3, int i4);

    private static native void native_addRect(int i2, float f2, float f3, float f4, float f5, int i3);

    private static native void native_addRect(int i2, RectF rectF, int i3);

    private static native void native_addRoundRect(int i2, RectF rectF, float f2, float f3, int i3);

    private static native void native_addRoundRect(int i2, RectF rectF, float[] fArr, int i3);

    private static native void native_arcTo(int i2, RectF rectF, float f2, float f3, boolean z2);

    private static native void native_close(int i2);

    private static native void native_computeBounds(int i2, RectF rectF);

    private static native void native_cubicTo(int i2, float f2, float f3, float f4, float f5, float f6, float f7);

    private static native int native_getFillType(int i2);

    private static native void native_incReserve(int i2, int i3);

    private static native boolean native_isEmpty(int i2);

    private static native boolean native_isRect(int i2, RectF rectF);

    private static native void native_lineTo(int i2, float f2, float f3);

    private static native void native_moveTo(int i2, float f2, float f3);

    private static native void native_offset(int i2, float f2, float f3);

    private static native void native_offset(int i2, float f2, float f3, int i3);

    private static native boolean native_op(int i2, int i3, int i4, int i5);

    private static native void native_quadTo(int i2, float f2, float f3, float f4, float f5);

    private static native void native_rCubicTo(int i2, float f2, float f3, float f4, float f5, float f6, float f7);

    private static native void native_rLineTo(int i2, float f2, float f3);

    private static native void native_rMoveTo(int i2, float f2, float f3);

    private static native void native_rQuadTo(int i2, float f2, float f3, float f4, float f5);

    private static native void native_reset(int i2);

    private static native void native_rewind(int i2);

    private static native void native_set(int i2, int i3);

    private static native void native_setFillType(int i2, int i3);

    private static native void native_setLastPoint(int i2, float f2, float f3);

    private static native void native_transform(int i2, int i3);

    private static native void native_transform(int i2, int i3, int i4);

    public void addArc(RectF rectF, float f2, float f3) {
        Objects.requireNonNull(rectF, "need oval parameter");
        this.isSimplePath = false;
        native_addArc(this.mNativePath, rectF, f2, f3);
    }

    public void addCircle(float f2, float f3, float f4, Direction direction) {
        this.isSimplePath = false;
        native_addCircle(this.mNativePath, f2, f3, f4, direction.nativeInt);
    }

    public void addOval(RectF rectF, Direction direction) {
        Objects.requireNonNull(rectF, "need oval parameter");
        this.isSimplePath = false;
        native_addOval(this.mNativePath, rectF, direction.nativeInt);
    }

    public void addPath(Path path, float f2, float f3) {
        this.isSimplePath = false;
        native_addPath(this.mNativePath, path.mNativePath, f2, f3);
    }

    public void addRect(RectF rectF, Direction direction) {
        Objects.requireNonNull(rectF, "need rect parameter");
        detectSimplePath(rectF.left, rectF.top, rectF.right, rectF.bottom, direction);
        native_addRect(this.mNativePath, rectF, direction.nativeInt);
    }

    public void addRoundRect(RectF rectF, float f2, float f3, Direction direction) {
        Objects.requireNonNull(rectF, "need rect parameter");
        this.isSimplePath = false;
        native_addRoundRect(this.mNativePath, rectF, f2, f3, direction.nativeInt);
    }

    public void arcTo(RectF rectF, float f2, float f3, boolean z2) {
        this.isSimplePath = false;
        native_arcTo(this.mNativePath, rectF, f2, f3, z2);
    }

    public void close() {
        this.isSimplePath = false;
        native_close(this.mNativePath);
    }

    public void computeBounds(RectF rectF, boolean z2) {
        native_computeBounds(this.mNativePath, rectF);
    }

    public void cubicTo(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.isSimplePath = false;
        native_cubicTo(this.mNativePath, f2, f3, f4, f5, f6, f7);
    }

    public void finalize() throws Throwable {
        try {
            finalizer(this.mNativePath);
        } finally {
            super.finalize();
        }
    }

    public FillType getFillType() {
        return sFillTypeArray[native_getFillType(this.mNativePath)];
    }

    public void incReserve(int i2) {
        native_incReserve(this.mNativePath, i2);
    }

    public boolean isEmpty() {
        return native_isEmpty(this.mNativePath);
    }

    public boolean isInverseFillType() {
        return (native_getFillType(this.mNativePath) & 2) != 0;
    }

    public boolean isRect(RectF rectF) {
        return native_isRect(this.mNativePath, rectF);
    }

    public void lineTo(float f2, float f3) {
        this.isSimplePath = false;
        native_lineTo(this.mNativePath, f2, f3);
    }

    public void moveTo(float f2, float f3) {
        native_moveTo(this.mNativePath, f2, f3);
    }

    public final int ni() {
        return this.mNativePath;
    }

    public void offset(float f2, float f3, Path path) {
        int i2 = 0;
        if (path != null) {
            int i3 = path.mNativePath;
            path.isSimplePath = false;
            i2 = i3;
        }
        native_offset(this.mNativePath, f2, f3, i2);
    }

    public boolean op(Path path, Op op) {
        return op(this, path, op);
    }

    public void quadTo(float f2, float f3, float f4, float f5) {
        this.isSimplePath = false;
        native_quadTo(this.mNativePath, f2, f3, f4, f5);
    }

    public void rCubicTo(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.isSimplePath = false;
        native_rCubicTo(this.mNativePath, f2, f3, f4, f5, f6, f7);
    }

    public void rLineTo(float f2, float f3) {
        this.isSimplePath = false;
        native_rLineTo(this.mNativePath, f2, f3);
    }

    public void rMoveTo(float f2, float f3) {
        native_rMoveTo(this.mNativePath, f2, f3);
    }

    public void rQuadTo(float f2, float f3, float f4, float f5) {
        this.isSimplePath = false;
        native_rQuadTo(this.mNativePath, f2, f3, f4, f5);
    }

    public void reset() {
        this.isSimplePath = true;
        if (this.mDetectSimplePaths) {
            this.mLastDirection = null;
            Region region = this.rects;
            if (region != null) {
                region.setEmpty();
            }
        }
        FillType fillType = getFillType();
        native_reset(this.mNativePath);
        setFillType(fillType);
    }

    public void rewind() {
        this.isSimplePath = true;
        if (this.mDetectSimplePaths) {
            this.mLastDirection = null;
            Region region = this.rects;
            if (region != null) {
                region.setEmpty();
            }
        }
        native_rewind(this.mNativePath);
    }

    public void set(Path path) {
        if (this != path) {
            this.isSimplePath = path.isSimplePath;
            native_set(this.mNativePath, path.mNativePath);
        }
    }

    public void setFillType(FillType fillType) {
        native_setFillType(this.mNativePath, fillType.nativeInt);
    }

    public void setLastPoint(float f2, float f3) {
        this.isSimplePath = false;
        native_setLastPoint(this.mNativePath, f2, f3);
    }

    public void toggleInverseFillType() {
        native_setFillType(this.mNativePath, native_getFillType(this.mNativePath) ^ 2);
    }

    public void transform(Matrix matrix, Path path) {
        int i2 = 0;
        if (path != null) {
            path.isSimplePath = false;
            i2 = path.mNativePath;
        }
        native_transform(this.mNativePath, matrix.native_instance, i2);
    }

    public boolean op(Path path, Path path2, Op op) {
        if (!native_op(path.mNativePath, path2.mNativePath, op.ordinal(), this.mNativePath)) {
            return false;
        }
        this.isSimplePath = false;
        this.rects = null;
        return true;
    }

    public void addPath(Path path) {
        this.isSimplePath = false;
        native_addPath(this.mNativePath, path.mNativePath);
    }

    public void arcTo(RectF rectF, float f2, float f3) {
        this.isSimplePath = false;
        native_arcTo(this.mNativePath, rectF, f2, f3, false);
    }

    public void addRect(float f2, float f3, float f4, float f5, Direction direction) {
        detectSimplePath(f2, f3, f4, f5, direction);
        native_addRect(this.mNativePath, f2, f3, f4, f5, direction.nativeInt);
    }

    public void addRoundRect(RectF rectF, float[] fArr, Direction direction) {
        Objects.requireNonNull(rectF, "need rect parameter");
        if (fArr.length >= 8) {
            this.isSimplePath = false;
            native_addRoundRect(this.mNativePath, rectF, fArr, direction.nativeInt);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("radii[] needs 8 values");
    }

    public void offset(float f2, float f3) {
        this.isSimplePath = false;
        native_offset(this.mNativePath, f2, f3);
    }

    public void transform(Matrix matrix) {
        this.isSimplePath = false;
        native_transform(this.mNativePath, matrix.native_instance);
    }

    public void addPath(Path path, Matrix matrix) {
        if (!path.isSimplePath) {
            this.isSimplePath = false;
        }
        native_addPath(this.mNativePath, path.mNativePath, matrix.native_instance);
    }

    public Path(Path path) {
        int i2;
        this.isSimplePath = true;
        this.mLastDirection = null;
        if (path != null) {
            i2 = path.mNativePath;
            this.isSimplePath = path.isSimplePath;
            if (path.rects != null) {
                this.rects = new Region(path.rects);
            }
        } else {
            i2 = 0;
        }
        this.mNativePath = init2(i2);
        this.mDetectSimplePaths = android.view.HardwareRenderer.isAvailable();
    }
}
