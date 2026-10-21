package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class LinearGradient extends Shader {
    private static final int TYPE_COLORS_AND_POSITIONS = 1;
    private static final int TYPE_COLOR_START_AND_COLOR_END = 2;
    private int mColor0;
    private int mColor1;
    private int[] mColors;
    private float[] mPositions;
    private Shader.TileMode mTileMode;
    private int mType;
    private float mX0;
    private float mX1;
    private float mY0;
    private float mY1;

    public LinearGradient(float f2, float f3, float f4, float f5, int[] iArr, float[] fArr, Shader.TileMode tileMode) {
        if (iArr.length < 2) {
            throw new IllegalArgumentException("needs >= 2 number of colors");
        }
        if (fArr != null && iArr.length != fArr.length) {
            throw new IllegalArgumentException("color and position arrays must be of equal length");
        }
        this.mType = 1;
        this.mX0 = f2;
        this.mY0 = f3;
        this.mX1 = f4;
        this.mY1 = f5;
        this.mColors = iArr;
        this.mPositions = fArr;
        this.mTileMode = tileMode;
        int iNativeCreate1 = nativeCreate1(f2, f3, f4, f5, iArr, fArr, tileMode.nativeInt);
        this.native_instance = iNativeCreate1;
        this.native_shader = nativePostCreate1(iNativeCreate1, f2, f3, f4, f5, iArr, fArr, tileMode.nativeInt);
    }

    private native int nativeCreate1(float f2, float f3, float f4, float f5, int[] iArr, float[] fArr, int i2);

    private native int nativeCreate2(float f2, float f3, float f4, float f5, int i2, int i3, int i4);

    private native int nativePostCreate1(int i2, float f2, float f3, float f4, float f5, int[] iArr, float[] fArr, int i3);

    private native int nativePostCreate2(int i2, float f2, float f3, float f4, float f5, int i3, int i4, int i5);

    @Override // android.graphics.Shader
    public Shader copy() {
        LinearGradient linearGradient;
        int i2 = this.mType;
        if (i2 == 1) {
            float f2 = this.mX0;
            float f3 = this.mY0;
            float f4 = this.mX1;
            float f5 = this.mY1;
            int[] iArr = (int[]) this.mColors.clone();
            float[] fArr = this.mPositions;
            linearGradient = new LinearGradient(f2, f3, f4, f5, iArr, fArr != null ? (float[]) fArr.clone() : null, this.mTileMode);
        } else {
            if (i2 != 2) {
                throw new IllegalArgumentException("LinearGradient should be created with either colors and positions or start color and end color");
            }
            linearGradient = new LinearGradient(this.mX0, this.mY0, this.mX1, this.mY1, this.mColor0, this.mColor1, this.mTileMode);
        }
        copyLocalMatrix(linearGradient);
        return linearGradient;
    }

    public LinearGradient(float f2, float f3, float f4, float f5, int i2, int i3, Shader.TileMode tileMode) {
        this.mType = 2;
        this.mX0 = f2;
        this.mY0 = f3;
        this.mX1 = f4;
        this.mY1 = f5;
        this.mColor0 = i2;
        this.mColor1 = i3;
        this.mTileMode = tileMode;
        int iNativeCreate2 = nativeCreate2(f2, f3, f4, f5, i2, i3, tileMode.nativeInt);
        this.native_instance = iNativeCreate2;
        this.native_shader = nativePostCreate2(iNativeCreate2, f2, f3, f4, f5, i2, i3, tileMode.nativeInt);
    }
}
