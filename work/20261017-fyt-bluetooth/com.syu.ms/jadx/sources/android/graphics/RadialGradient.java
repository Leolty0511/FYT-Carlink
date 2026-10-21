package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class RadialGradient extends Shader {
    private static final int TYPE_COLORS_AND_POSITIONS = 1;
    private static final int TYPE_COLOR_CENTER_AND_COLOR_EDGE = 2;
    private int mColor0;
    private int mColor1;
    private int[] mColors;
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
        this.mColors = iArr;
        this.mPositions = fArr;
        this.mTileMode = tileMode;
        int iNativeCreate1 = nativeCreate1(f2, f3, f4, iArr, fArr, tileMode.nativeInt);
        this.native_instance = iNativeCreate1;
        this.native_shader = nativePostCreate1(iNativeCreate1, f2, f3, f4, iArr, fArr, tileMode.nativeInt);
    }

    private static native int nativeCreate1(float f2, float f3, float f4, int[] iArr, float[] fArr, int i2);

    private static native int nativeCreate2(float f2, float f3, float f4, int i2, int i3, int i4);

    private static native int nativePostCreate1(int i2, float f2, float f3, float f4, int[] iArr, float[] fArr, int i3);

    private static native int nativePostCreate2(int i2, float f2, float f3, float f4, int i3, int i4, int i5);

    @Override // android.graphics.Shader
    public Shader copy() {
        RadialGradient radialGradient;
        int i2 = this.mType;
        if (i2 == 1) {
            float f2 = this.mX;
            float f3 = this.mY;
            float f4 = this.mRadius;
            int[] iArr = (int[]) this.mColors.clone();
            float[] fArr = this.mPositions;
            radialGradient = new RadialGradient(f2, f3, f4, iArr, fArr != null ? (float[]) fArr.clone() : null, this.mTileMode);
        } else {
            if (i2 != 2) {
                throw new IllegalArgumentException("RadialGradient should be created with either colors and positions or center color and edge color");
            }
            radialGradient = new RadialGradient(this.mX, this.mY, this.mRadius, this.mColor0, this.mColor1, this.mTileMode);
        }
        copyLocalMatrix(radialGradient);
        return radialGradient;
    }

    public RadialGradient(float f2, float f3, float f4, int i2, int i3, Shader.TileMode tileMode) {
        if (f4 > 0.0f) {
            this.mType = 2;
            this.mX = f2;
            this.mY = f3;
            this.mRadius = f4;
            this.mColor0 = i2;
            this.mColor1 = i3;
            this.mTileMode = tileMode;
            int iNativeCreate2 = nativeCreate2(f2, f3, f4, i2, i3, tileMode.nativeInt);
            this.native_instance = iNativeCreate2;
            this.native_shader = nativePostCreate2(iNativeCreate2, f2, f3, f4, i2, i3, tileMode.nativeInt);
            return;
        }
        throw new IllegalArgumentException("radius must be > 0");
    }
}
