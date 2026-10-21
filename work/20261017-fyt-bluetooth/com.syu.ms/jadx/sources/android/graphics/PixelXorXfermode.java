package android.graphics;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class PixelXorXfermode extends Xfermode {
    public PixelXorXfermode(int i2) {
        this.native_instance = nativeCreate(i2);
    }

    private static native int nativeCreate(int i2);
}
