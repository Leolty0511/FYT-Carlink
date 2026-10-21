package android.view;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class d {
    public static void a(SurfaceHolder.Callback2 callback2, SurfaceHolder surfaceHolder, Runnable runnable) {
        callback2.surfaceRedrawNeeded(surfaceHolder);
        runnable.run();
    }
}
