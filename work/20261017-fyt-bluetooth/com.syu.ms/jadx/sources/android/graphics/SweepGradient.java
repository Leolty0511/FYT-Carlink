package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class SweepGradient extends Shader {
    private static final int TYPE_COLORS_AND_POSITIONS = 1;
    private static final int TYPE_COLOR_START_AND_COLOR_END = 2;
    private int mColor0;
    private int mColor1;
    private int[] mColors;
    private float mCx;
    private float mCy;
    private float[] mPositions;
    private int mType;

    public SweepGradient(float f2, float f3, int[] iArr, float[] fArr) {
        if (iArr.length < 2) {
            throw new IllegalArgumentException("needs >= 2 number of colors");
        }
        if (fArr != null && iArr.length != fArr.length) {
            throw new IllegalArgumentException("color and position arrays must be of equal length");
        }
        this.mType = 1;
        this.mCx = f2;
        this.mCy = f3;
        this.mColors = iArr;
        this.mPositions = fArr;
        int iNativeCreate1 = nativeCreate1(f2, f3, iArr, fArr);
        this.native_instance = iNativeCreate1;
        this.native_shader = nativePostCreate1(iNativeCreate1, f2, f3, iArr, fArr);
    }

    private static native int nativeCreate1(float f2, float f3, int[] iArr, float[] fArr);

    private static native int nativeCreate2(float f2, float f3, int i2, int i3);

    private static native int nativePostCreate1(int i2, float f2, float f3, int[] iArr, float[] fArr);

    private static native int nativePostCreate2(int i2, float f2, float f3, int i3, int i4);

    @Override // android.graphics.Shader
    public Shader copy() {
        SweepGradient sweepGradient;
        int i2 = this.mType;
        if (i2 == 1) {
            float f2 = this.mCx;
            float f3 = this.mCy;
            int[] iArr = (int[]) this.mColors.clone();
            float[] fArr = this.mPositions;
            sweepGradient = new SweepGradient(f2, f3, iArr, fArr != null ? (float[]) fArr.clone() : null);
        } else {
            if (i2 != 2) {
                throw new IllegalArgumentException("SweepGradient should be created with either colors and positions or start color and end color");
            }
            sweepGradient = new SweepGradient(this.mCx, this.mCy, this.mColor0, this.mColor1);
        }
        copyLocalMatrix(sweepGradient);
        return sweepGradient;
    }

    public SweepGradient(float f2, float f3, int i2, int i3) {
        this.mType = 2;
        this.mCx = f2;
        this.mCy = f3;
        this.mColor0 = i2;
        this.mColor1 = i3;
        int iNativeCreate2 = nativeCreate2(f2, f3, i2, i3);
        this.native_instance = iNativeCreate2;
        this.native_shader = nativePostCreate2(iNativeCreate2, f2, f3, i2, i3);
    }
}
