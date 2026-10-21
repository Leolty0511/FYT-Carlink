package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class TableMaskFilter extends MaskFilter {
    public TableMaskFilter(byte[] bArr) {
        if (bArr.length < 256) {
            throw new RuntimeException("table.length must be >= 256");
        }
        this.native_instance = nativeNewTable(bArr);
    }

    public static TableMaskFilter CreateClipTable(int i2, int i3) {
        return new TableMaskFilter(nativeNewClip(i2, i3));
    }

    public static TableMaskFilter CreateGammaTable(float f2) {
        return new TableMaskFilter(nativeNewGamma(f2));
    }

    private static native long nativeNewClip(int i2, int i3);

    private static native long nativeNewGamma(float f2);

    private static native long nativeNewTable(byte[] bArr);

    private TableMaskFilter(long j2) {
        this.native_instance = j2;
    }
}
