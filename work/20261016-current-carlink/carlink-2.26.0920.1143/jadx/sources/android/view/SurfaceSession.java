package android.view;

/* JADX INFO: loaded from: classes2.dex */
public final class SurfaceSession {
    private long mNativeClient;

    public SurfaceSession() {
        this.mNativeClient = nativeCreate();
    }

    private static native long nativeCreate();

    private static native long nativeCreateScoped(long j2);

    private static native void nativeDestroy(long j2);

    private static native void nativeKill(long j2);

    public void finalize() throws Throwable {
        try {
            long j2 = this.mNativeClient;
            if (j2 != 0) {
                nativeDestroy(j2);
            }
        } finally {
            super.finalize();
        }
    }

    public void kill() {
        nativeKill(this.mNativeClient);
    }

    public SurfaceSession(Surface surface) {
        this.mNativeClient = nativeCreateScoped(surface.mNativeObject);
    }
}
