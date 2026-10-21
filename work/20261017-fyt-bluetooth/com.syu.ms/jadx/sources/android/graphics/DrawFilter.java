package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class DrawFilter {
    public int mNativeInt;

    private static native void nativeDestructor(int i2);

    public void finalize() throws Throwable {
        try {
            nativeDestructor(this.mNativeInt);
        } finally {
            super.finalize();
        }
    }
}
