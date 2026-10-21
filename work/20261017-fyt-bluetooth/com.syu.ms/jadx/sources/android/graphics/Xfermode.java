package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class Xfermode {
    public int native_instance;

    private static native void finalizer(int i2);

    public void finalize() throws Throwable {
        try {
            finalizer(this.native_instance);
        } finally {
            super.finalize();
        }
    }
}
