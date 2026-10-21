package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class PathEffect {
    public int native_instance;

    private static native void nativeDestructor(int i2);

    public void finalize() {
        nativeDestructor(this.native_instance);
    }
}
