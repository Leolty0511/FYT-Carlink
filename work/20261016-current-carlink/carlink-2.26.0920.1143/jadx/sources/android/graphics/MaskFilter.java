package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class MaskFilter {
    long native_instance;

    private static native void nativeDestructor(long j2);

    public void finalize() {
        nativeDestructor(this.native_instance);
        this.native_instance = 0L;
    }
}
