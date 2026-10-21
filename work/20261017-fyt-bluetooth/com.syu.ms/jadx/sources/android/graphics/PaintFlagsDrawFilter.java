package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class PaintFlagsDrawFilter extends DrawFilter {
    public final int clearBits;
    public final int setBits;

    public PaintFlagsDrawFilter(int i2, int i3) {
        this.clearBits = i2;
        this.setBits = i3;
        this.mNativeInt = nativeConstructor(i2, i3);
    }

    private static native int nativeConstructor(int i2, int i3);
}
