package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class ComposePathEffect extends PathEffect {
    public ComposePathEffect(PathEffect pathEffect, PathEffect pathEffect2) {
        this.native_instance = nativeCreate(pathEffect.native_instance, pathEffect2.native_instance);
    }

    private static native int nativeCreate(int i2, int i3);
}
