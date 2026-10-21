package android.animation;

/* JADX INFO: loaded from: classes.dex */
public class IntArrayEvaluator implements TypeEvaluator<int[]> {
    private int[] mArray;

    public IntArrayEvaluator() {
    }

    public IntArrayEvaluator(int[] iArr) {
        this.mArray = iArr;
    }

    @Override // android.animation.TypeEvaluator
    public int[] evaluate(float f2, int[] iArr, int[] iArr2) {
        int[] iArr3 = this.mArray;
        if (iArr3 == null) {
            iArr3 = new int[iArr.length];
        }
        for (int i2 = 0; i2 < iArr3.length; i2++) {
            int i3 = iArr[i2];
            iArr3[i2] = (int) (((iArr2[i2] - i3) * f2) + i3);
        }
        return iArr3;
    }
}
