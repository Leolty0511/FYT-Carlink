package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class Rasterizer {
    public int native_instance;

    private static native void finalizer(int i2);

    public void finalize() {
        finalizer(this.native_instance);
    }
}
