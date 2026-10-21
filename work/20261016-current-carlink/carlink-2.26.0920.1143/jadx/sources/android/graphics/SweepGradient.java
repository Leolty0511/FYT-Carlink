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
        this.mColors = (int[]) iArr.clone();
        this.mPositions = fArr != null ? (float[]) fArr.clone() : null;
    }

    private static native long nativeCreate1(long j2, float f2, float f3, int[] iArr, float[] fArr);

    private static native long nativeCreate2(long j2, float f2, float f3, int i2, int i3);

    @Override // android.graphics.Shader
    public Shader copy() {
        SweepGradient sweepGradient;
        if (this.mType == 1) {
            float f2 = this.mCx;
            float f3 = this.mCy;
            int[] iArr = (int[]) this.mColors.clone();
            float[] fArr = this.mPositions;
            sweepGradient = new SweepGradient(f2, f3, iArr, fArr != null ? (float[]) fArr.clone() : null);
        } else {
            sweepGradient = new SweepGradient(this.mCx, this.mCy, this.mColor0, this.mColor1);
        }
        copyLocalMatrix(sweepGradient);
        return sweepGradient;
    }

    @Override // android.graphics.Shader
    public long createNativeInstance(long j2) {
        return this.mType == 1 ? nativeCreate1(j2, this.mCx, this.mCy, this.mColors, this.mPositions) : nativeCreate2(j2, this.mCx, this.mCy, this.mColor0, this.mColor1);
    }

    public SweepGradient(float f2, float f3, int i2, int i3) {
        this.mType = 2;
        this.mCx = f2;
        this.mCy = f3;
        this.mColor0 = i2;
        this.mColor1 = i3;
        this.mColors = null;
        this.mPositions = null;
    }
}
