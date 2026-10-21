package android.view;

/* JADX INFO: loaded from: classes.dex */
public final class SurfaceSession {
    private int mNativeClient = nativeCreate();

    private static native int nativeCreate();

    private static native void nativeDestroy(int i2);

    private static native void nativeKill(int i2);

    public void finalize() throws Throwable {
        try {
            int i2 = this.mNativeClient;
            if (i2 != 0) {
                nativeDestroy(i2);
            }
        } finally {
            super.finalize();
        }
    }

    public void kill() {
        nativeKill(this.mNativeClient);
    }
}
