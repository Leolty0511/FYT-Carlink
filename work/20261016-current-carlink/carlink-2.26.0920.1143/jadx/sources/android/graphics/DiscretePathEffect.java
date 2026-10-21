package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class DiscretePathEffect extends PathEffect {
    public DiscretePathEffect(float f2, float f3) {
        this.native_instance = nativeCreate(f2, f3);
    }

    private static native long nativeCreate(float f2, float f3);
}
