package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class ColorFilter {
    public int nativeColorFilter;
    public int native_instance;

    private static native void finalizer(int i2, int i3);

    public void finalize() {
        try {
            super.finalize();
        } finally {
            finalizer(this.native_instance, this.nativeColorFilter);
        }
    }
}
