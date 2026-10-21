package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class DashPathEffect extends PathEffect {
    public DashPathEffect(float[] fArr, float f2) {
        if (fArr.length < 2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.native_instance = nativeCreate(fArr, f2);
    }

    private static native long nativeCreate(float[] fArr, float f2);
}
