package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class EmbossMaskFilter extends MaskFilter {
    public EmbossMaskFilter(float[] fArr, float f2, float f3, float f4) {
        if (fArr.length < 3) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.native_instance = nativeConstructor(fArr, f2, f3, f4);
    }

    private static native long nativeConstructor(float[] fArr, float f2, float f3, float f4);
}
