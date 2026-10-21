package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class ColorMatrixColorFilter extends ColorFilter {
    public ColorMatrixColorFilter(ColorMatrix colorMatrix) {
        float[] array = colorMatrix.getArray();
        int iNativeColorMatrixFilter = nativeColorMatrixFilter(array);
        this.native_instance = iNativeColorMatrixFilter;
        this.nativeColorFilter = nColorMatrixFilter(iNativeColorMatrixFilter, array);
    }

    private static native int nColorMatrixFilter(int i2, float[] fArr);

    private static native int nativeColorMatrixFilter(float[] fArr);

    public ColorMatrixColorFilter(float[] fArr) {
        if (fArr.length >= 20) {
            int iNativeColorMatrixFilter = nativeColorMatrixFilter(fArr);
            this.native_instance = iNativeColorMatrixFilter;
            this.nativeColorFilter = nColorMatrixFilter(iNativeColorMatrixFilter, fArr);
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }
}
