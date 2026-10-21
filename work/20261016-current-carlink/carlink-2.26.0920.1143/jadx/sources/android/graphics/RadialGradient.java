package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class RadialGradient extends Shader {
    private static final int TYPE_COLORS_AND_POSITIONS = 1;
    private static final int TYPE_COLOR_CENTER_AND_COLOR_EDGE = 2;
    private int mCenterColor;
    private int[] mColors;
    private int mEdgeColor;
    private float[] mPositions;
    private float mRadius;
    private Shader.TileMode mTileMode;
    private int mType;
    private float mX;
    private float mY;

    public RadialGradient(float f2, float f3, float f4, int[] iArr, float[] fArr, Shader.TileMode tileMode) {
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("radius must be > 0");
        }
        if (iArr.length < 2) {
            throw new IllegalArgumentException("needs >= 2 number of colors");
        }
        if (fArr != null && iArr.length != fArr.length) {
            throw new IllegalArgumentException("color and position arrays must be of equal length");
        }
        this.mType = 1;
        this.mX = f2;
        this.mY = f3;
        this.mRadius = f4;
        this.mColors = (int[]) iArr.clone();
        this.mPositions = fArr != null ? (float[]) fArr.clone() : null;
        this.mTileMode = tileMode;
    }

    private static native long nativeCreate1(long j2, float f2, float f3, float f4, int[] iArr, float[] fArr, int i2);

    private static native long nativeCreate2(long j2, float f2, float f3, float f4, int i2, int i3, int i4);

    @Override // android.graphics.Shader
    public Shader copy() {
        RadialGradient radialGradient;
        if (this.mType == 1) {
            float f2 = this.mX;
            float f3 = this.mY;
            float f4 = this.mRadius;
            int[] iArr = (int[]) this.mColors.clone();
            float[] fArr = this.mPositions;
            radialGradient = new RadialGradient(f2, f3, f4, iArr, fArr != null ? (float[]) fArr.clone() : null, this.mTileMode);
        } else {
            radialGradient = new RadialGradient(this.mX, this.mY, this.mRadius, this.mCenterColor, this.mEdgeColor, this.mTileMode);
        }
        copyLocalMatrix(radialGradient);
        return radialGradient;
    }

    @Override // android.graphics.Shader
    public long createNativeInstance(long j2) {
        return this.mType == 1 ? nativeCreate1(j2, this.mX, this.mY, this.mRadius, this.mColors, this.mPositions, this.mTileMode.nativeInt) : nativeCreate2(j2, this.mX, this.mY, this.mRadius, this.mCenterColor, this.mEdgeColor, this.mTileMode.nativeInt);
    }

    public RadialGradient(float f2, float f3, float f4, int i2, int i3, Shader.TileMode tileMode) {
        if (f4 > 0.0f) {
            this.mType = 2;
            this.mX = f2;
            this.mY = f3;
            this.mRadius = f4;
            this.mCenterColor = i2;
            this.mEdgeColor = i3;
            this.mTileMode = tileMode;
            return;
        }
        throw new IllegalArgumentException("radius must be > 0");
    }
}
