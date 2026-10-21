package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class CornerPathEffect extends PathEffect {
    public CornerPathEffect(float f2) {
        this.native_instance = nativeCreate(f2);
    }

    private static native int nativeCreate(float f2);
}
