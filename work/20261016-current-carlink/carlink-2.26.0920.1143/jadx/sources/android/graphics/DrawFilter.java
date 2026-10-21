package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class DrawFilter {
    public long mNativeInt;

    private static native void nativeDestructor(long j2);

    public void finalize() throws Throwable {
        try {
            nativeDestructor(this.mNativeInt);
            this.mNativeInt = 0L;
        } finally {
            super.finalize();
        }
    }
}
