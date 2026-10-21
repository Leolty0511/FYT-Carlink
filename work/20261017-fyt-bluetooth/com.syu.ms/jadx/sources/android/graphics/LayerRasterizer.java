package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class LayerRasterizer extends Rasterizer {
    public LayerRasterizer() {
        this.native_instance = nativeConstructor();
    }

    private static native void nativeAddLayer(int i2, int i3, float f2, float f3);

    private static native int nativeConstructor();

    public void addLayer(Paint paint, float f2, float f3) {
        nativeAddLayer(this.native_instance, paint.mNativePaint, f2, f3);
    }

    public void addLayer(Paint paint) {
        nativeAddLayer(this.native_instance, paint.mNativePaint, 0.0f, 0.0f);
    }
}
