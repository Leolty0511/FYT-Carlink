package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class BlurMaskFilter extends MaskFilter {

    public enum Blur {
        NORMAL(0),
        SOLID(1),
        OUTER(2),
        INNER(3);

        public final int native_int;

        Blur(int i2) {
            this.native_int = i2;
        }
    }

    public BlurMaskFilter(float f2, Blur blur) {
        this.native_instance = nativeConstructor(f2, blur.native_int);
    }

    private static native int nativeConstructor(float f2, int i2);
}
