package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class PorterDuffXfermode extends Xfermode {
    public final PorterDuff.Mode mode;

    public PorterDuffXfermode(PorterDuff.Mode mode) {
        this.mode = mode;
        this.native_instance = nativeCreateXfermode(mode.nativeInt);
    }

    private static native int nativeCreateXfermode(int i2);
}
